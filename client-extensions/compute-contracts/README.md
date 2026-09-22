# Generated compute lifecycle wire contracts

These authored programs call the real adjacent generated SDK packages. `wire.py`
starts a bounded loopback HTTP server, runs one program, and validates all fourteen
requests including controller/worker/executor bearer credentials, request bodies,
worker claim and executor credential issuance. Each driver checks the typed claim
owner and epoch, submits that authority to issuance, and uses the returned token
for executor requests. The oracle randomizes that token on every run so a
hardcoded executor credential cannot bypass issuance. The suites also verify
explicit identical receipt replay and exactly one unavailable mutation despite
caller retry configuration. Programs check generated responses for readiness,
recovery-required/lost-process state, terminal polling and scoped-auth failure.
Ruby and Swift use ordinary JSON polling; their SSE limitation does not affect
this lifecycle.

Run from each generated language directory:

```sh
python ../client-extensions/compute-contracts/wire.py python ../client-extensions/compute-contracts/python_contract.py
node_modules/.bin/tsc --project ../client-extensions/compute-contracts/tsconfig.json
python ../client-extensions/compute-contracts/wire.py node ../client-extensions/compute-contracts/typescript_contract.js
python ../client-extensions/compute-contracts/wire.py cargo run --locked --manifest-path ../client-extensions/compute-contracts/rust/Cargo.toml
python ../client-extensions/compute-contracts/wire.py bundle exec ruby -Ilib ../client-extensions/compute-contracts/ruby_contract.rb
python ../client-extensions/compute-contracts/wire.py swift run --package-path ../client-extensions/compute-contracts/swift-contract ComputeContract
```

For Go, enter `client-extensions/compute-contracts/go` and run
`python ../wire.py go run .`. Build/install the adjacent generated package first
where required. The SDK verification workflow invokes each suite explicitly.
These checks prove local client serialization and transport behavior, not hosted
compute authorization, durable leases, execution or billing acceptance.

Rust bearer authentication uses `ApiClientBuilder::token`; `api_key` configures
a separate API-key header and must not be substituted for scoped bearer tokens.
