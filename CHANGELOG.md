# Changelog

## 0.2.13

- Create and version datasets, capture permitted run content, upload examples, and export examples as NDJSON.
- Preview dataset checks, run eligible examples against an agent, and read check results.
- Compatibility: remove the former agent-budget operations; manage credits and spending caps in the dashboard.
- Add HTTP and Slack channel bindings, initial channel selection during agent creation, and delivery status operations.
- Add HTTP channel invocation and receipt polling with a dedicated channel credential, separately from the project API key.
- Add personal channel connections, approvals, files, and Slack identity linking operations.
- Add individual agent document setting edits, access review, and managed agent renaming.
- Expand typed session, schedule, and transcript responses, including transcript usage and memory policy settings.
- Compatibility: session and schedule operations now return typed response models in place of open objects. Update callers that index these responses as dictionaries to use model attributes in Python.
- These features require an updated managed service.

## 0.2.12

- Add agent document operations for draft editing, validation, access review, publication, version history, comparisons, and suggestions.
- Add draft test sessions, typed session input receipts, and agent schedules with occurrence history.
- Expand connection discovery and management, including personal account workflows.
- Read managed conversation transcripts and stream transcript events, subject to session privacy.
- These features require an updated managed service.

## 0.2.10

- Declare an agent's reach in typed `web`, `tools` and `setup` sections of its definition: web search provider and domain allow and block lists, built-in tool enablement and approval policies, and setup packages, commands and repositories.
- Read and update project capability ceilings: sandbox egress, denied domains, disallowed built-in tools and allowed git hosts.
- Create and read definition revisions. A changed definition is staged as a draft revision that is reviewed and released through changesets. Creating an existing agent with a changed definition now stages a draft revision instead of failing.
- Store git credentials for a host, list them, and grant them to agents. Credential values are write-only and never returned.
- Create, list and run task checks for an agent, and list their results. A check verifies a run with a test script or a rubric.
- The Python authoring package's `compile_directory` accepts the `web`, `tools` and `setup` manifest sections, validates them locally, and produces the same definition and content digest as the CLI authoring companion.
- Files an agent writes under `outputs/` in its workspace are published as session files.
- These features require an updated managed service.

## 0.2.9

- Python and TypeScript are the supported SDKs. The Go, Rust, Ruby, and Swift SDKs are no longer provided.

## 0.2.3

- Align the Python, TypeScript, Go, Rust, Ruby, and Swift SDK release versions.
- Refresh generated clients for the current public API.
- Run measurements distinguish observed execution costs, retail usage, and customer charges; unavailable costs remain unknown.
- Compatible with improved argument feedback and recovery for managed execution. These behavior improvements require the updated managed service.
