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

Run from each generated language directory:

```sh
python ../client-extensions/compute-contracts/wire.py python ../client-extensions/compute-contracts/python_contract.py
node_modules/.bin/tsc --project ../client-extensions/compute-contracts/tsconfig.json
python ../client-extensions/compute-contracts/wire.py node ../client-extensions/compute-contracts/typescript_contract.js
```

Build/install the adjacent generated package first where required. The SDK
verification workflow invokes each suite explicitly.
These checks prove local client serialization and transport behavior, not hosted
compute authorization, durable leases, execution or billing acceptance.
