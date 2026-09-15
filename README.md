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

To run commands on your own machine, set `execution_environment` to `local`
and provide `compute_provider_id` when starting a run or appending a session
turn. The provider must be registered for the project with the `compute.execute`
capability. Runs default to `managed`. Sikaru manages the agent loop; local
compute uses the same run events and tool-result APIs.

Please report API issues and proposed changes through this repository. 
