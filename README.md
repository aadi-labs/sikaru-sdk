# Sikaru SDKs

Public API clients for Sikaru, for TypeScript, Python, Go,
Rust, Ruby, and Swift. The API definition and generator configuration are
maintained separately by the Sikaru service team. This repository contains
client code and public examples only.

| Language | Source |
| --- | --- |
| Python | [python](python/) |
| TypeScript | [typescript](typescript/) |
| Go | [go](go/) |
| Rust | [rust](rust/) |
| Ruby | [ruby](ruby/) |
| Swift | [swift](swift/) |

Build/install from the language directory. Swift Package Manager can use this
repository directly; the root `Package.swift` points to the generated Swift sources. Generated installation snippets may
name registry packages; these local artifacts have not been published by this
change. Configure the API endpoint and a Sikaru API key. SDK mutations do not
automatically retry, even when read retry options are enabled.

Use the clients to manage agents and sessions, start runs, read events, submit
tool results and work with artifacts. The [Sikaru CLI](https://github.com/aadi-labs/sikaru-cli)
exposes the same public API for scripts and terminal workflows.

The clients are unmodified Fern output. Customer-source packaging is available
as a separate [authoring companion](client-extensions/authoring/README.md):
install with `pip install ./client-extensions/authoring`, then import
`compile_directory` from `sikaru_authoring` and pass its definition to the generated API.

Self-hosted compute uses generated `compute_environments`, `compute_workers`,
`compute_attachments`, `compute_credentials`, and `compute_operations` clients.
Create an execution session and bind an attachment before appending admitted
turns with `compute.execute`. Controllers issue restricted worker/executor
credentials; neither receives project-wide controller authority. The native CLI
also provides `sikaru exec` and `sikaru compute serve/worker`. Managed orchestration
remains hosted, and task files remain on customer compute unless exported.
See [polling lifecycle examples](client-extensions/compute-contracts/README.md).

Please report API issues and proposed changes through this repository. 
