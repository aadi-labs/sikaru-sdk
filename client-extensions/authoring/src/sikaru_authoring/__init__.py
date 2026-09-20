"""Compile explicitly selected customer source files for the public agent API.

This module performs no network requests and contains no execution runtime.
Pass ``bundle.definition`` and ``bundle.content_digest`` to the generated
managed-agent creation client. Only files named in sikaru.json are read.
"""
from __future__ import annotations

import base64
from dataclasses import dataclass
import hashlib
import json
import os
import stat
from pathlib import Path
import re
from typing import Any

_LIMIT = 1_000_000


@dataclass(frozen=True)
class AgentBundle:
    name: str
    definition: dict[str, Any]
    content_digest: str


def _canonical(value: Any) -> bytes:
    return json.dumps(value, sort_keys=True, separators=(",", ":"), ensure_ascii=False, allow_nan=False).encode()


def _read(root: Path, relative: str) -> bytes:
    if not relative or "\\" in relative or any(part in ("", ".", "..") for part in relative.split("/")):
        raise ValueError("Source paths must be relative without traversal")
    path = root
    for part in relative.split("/"):
        path = path / part
        if path.is_symlink():
            raise ValueError("Source symlinks are not supported")
    flags = os.O_RDONLY | getattr(os, "O_NONBLOCK", 0) | getattr(os, "O_NOFOLLOW", 0)
    with os.fdopen(os.open(path, flags), "rb") as stream:
        metadata = os.fstat(stream.fileno())
        if not stat.S_ISREG(metadata.st_mode) or metadata.st_size > _LIMIT:
            raise ValueError("Source must be a regular file of at most 1 MB")
        body = stream.read(_LIMIT + 1)
    if len(body) > _LIMIT:
        raise ValueError("Source exceeds 1 MB")
    return body


def compile_directory(directory: str | Path) -> AgentBundle:
    """Validate sikaru.json and return a deterministic, private-file-free bundle.

    Manifest: ``{"name":"support","sources":[{"path":"instructions.md",
    "kind":"agent_md"}]}``. Assets use kind ``skill_asset`` and are encoded
    as base64. Skills, assets and named agents retain their relative paths.
    """
    root = Path(directory)
    if root.is_symlink() or not root.is_dir():
        raise ValueError("Agent directory must be a real directory")
    manifest = json.loads(_read(root, "sikaru.json"))
    if not isinstance(manifest, dict) or set(manifest) != {"name", "sources"}:
        raise ValueError("Manifest requires only name and sources")
    name = manifest["name"]
    if not isinstance(name, str) or not re.fullmatch(r"[a-z0-9][a-z0-9-]{0,63}", name):
        raise ValueError("Invalid agent name")
    entries = manifest["sources"]
    if not isinstance(entries, list) or not 1 <= len(entries) <= 100:
        raise ValueError("Manifest requires 1 to 100 sources")
    sources, seen, packages = [], set(), set()
    has_root = False
    for entry in entries:
        if not isinstance(entry, dict) or set(entry) != {"path", "kind"}:
            raise ValueError("Source requires only path and kind")
        path, kind = entry["path"], entry["kind"]
        if not isinstance(path, str) or path in seen:
            raise ValueError("Invalid or duplicate source path")
        seen.add(path)
        named = re.fullmatch(r"agents/([A-Za-z0-9][A-Za-z0-9_-]*)/(.+)", path)
        local = named[2] if named else path
        if kind == "agent_md":
            if (named and local != "instructions.md") or (not named and path not in ("instructions.md", "AGENTS.md")):
                raise ValueError("Invalid instruction path")
        elif kind == "agent_skill":
            if not local.startswith("skills/") or not local.endswith(".md"):
                raise ValueError("Skills must be Markdown below skills/")
        elif kind == "eval_md":
            if named or not path.startswith("evals/") or not path.endswith(".md"):
                raise ValueError("Evals must be Markdown below evals/")
        elif kind == "skill_asset":
            asset = re.fullmatch(r"skills/([^/]+)/(scripts|references|assets)/(.+)", local)
            if not asset:
                raise ValueError("Asset requires a skill package directory")
            prefix = path[:-len(local)]
            packages.add(prefix + "skills/" + asset[1] + "/SKILL.md")
        else:
            raise ValueError("Unsupported customer source kind")
        body = _read(root, path)
        source: dict[str, Any] = {"path": path, "kind": kind}
        if kind == "skill_asset":
            source.update(content=base64.b64encode(body).decode("ascii"), encoding="base64")
        else:
            content = body.decode("utf-8")
            if "\0" in content:
                raise ValueError("Text sources cannot contain NUL")
            source["content"] = content
            if kind == "agent_md" and not named and content.strip():
                has_root = True
        sources.append(source)
    if not has_root:
        raise ValueError("Nonempty root instructions are required")
    skills = {source["path"] for source in sources if source["kind"] == "agent_skill"}
    if not packages <= skills:
        raise ValueError("Every asset requires its customer-authored SKILL.md")
    names = {source["path"].split("/")[1] for source in sources if source["path"].startswith("agents/")}
    for agent in names:
        if not any(source["path"] == f"agents/{agent}/instructions.md" and source["kind"] == "agent_md" for source in sources):
            raise ValueError("Every named agent requires instructions.md")
    definition = {"schema": "sikaru.agent.contract.v1", "sources": sorted(sources, key=lambda source: source["path"])}
    raw = _canonical(definition)
    if len(raw) > _LIMIT:
        raise ValueError("Customer definition exceeds 1 MB")
    return AgentBundle(name, definition, "sha256:" + hashlib.sha256(raw).hexdigest())
