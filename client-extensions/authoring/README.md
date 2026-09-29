# Sikaru authoring companion

This separately installed package compiles explicitly selected customer source
files. It performs no network requests and includes no execution runtime. The
`sikaru_api` SDK remains unmodified Fern output.

From the SDK repository:

```sh
python -m pip install ./client-extensions/authoring
```

```python
from sikaru_authoring import compile_directory

bundle = compile_directory("support-agent")
# Pass bundle.definition and bundle.content_digest to the generated SDK.
```

The manifest may also declare optional `web`, `tools` and `setup` sections. They
are validated locally and included in the definition as written; unknown
manifest keys are rejected.

Only files named in `sikaru.json` are packaged. Symlinks, traversal, unsupported
source kinds, and oversized bundles are rejected. The gateway validates the
public source contract before publication.

### Markdown agent documents

Document parsing and access validation happen on the server. The document helpers
preserve UTF-8 bytes, including CRLF line endings, through pull and push:

```python
from sikaru_api import SikaruApi
from sikaru_authoring.documents import pull_document, push_document, publish_document

client = SikaruApi()  # Reads SIKARU_API_KEY from the environment.
draft = pull_document(client, "project-id", "support", "agent.md")
# Edit agent.md, then save against the revision you read.
saved = push_document(client, "project-id", "support", "agent.md",
                      expected_revision=draft.revision)
```

A stale save raises the generated `ApiError` with status 409 and the newer draft
in `body["detail"]["draft"]`. Review that draft before resubmitting. Publication
requires its revision and the expected live version, with explicit acknowledgement
of access changes. Use `client.agent_documents.compare` to review the current
live version and `client.agent_documents.snippets` for hosted session examples.
The primary CLI exposes the same workflow through `sikaru agents pull`, `push`,
`validate`, `publish`, and `snippets`; use each command's `--help` for arguments.
