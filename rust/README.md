# Sikaru Rust Library

[![crates.io shield](https://img.shields.io/crates/v/sikaru)](https://crates.io/crates/sikaru)

The Sikaru Rust library provides convenient access to the Sikaru APIs from Rust.

## Table of Contents

- [Installation](#installation)
- [Reference](#reference)
- [Usage](#usage)
- [Environments](#environments)
- [Errors](#errors)
- [Request Types](#request-types)
- [Advanced](#advanced)
  - [Retries](#retries)
  - [Timeouts](#timeouts)
  - [Additional Headers](#additional-headers)
  - [Additional Query String Parameters](#additional-query-string-parameters)
  - [Custom Client](#custom-client)
- [Contributing](#contributing)

## Installation

Add this to your `Cargo.toml`:

```toml
[dependencies]
sikaru = "0.1.0"
```

Or install via cargo:

```sh
cargo add sikaru
```

## Reference

A full reference for this library is available [here](./reference.md).

## Usage

Instantiate and use the client with the following:

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .agent_imports
        .create_agent_import(
            &"project_id".to_string(),
            &CreateAgentImportRequest {
                improve: AgentImportImproveRequest {
                    mode: "mode".to_string(),
                    objective: "objective".to_string(),
                    promotion_gate: "promotionGate".to_string(),
                    ..Default::default()
                },
                name: "name".to_string(),
                eval_suites: None,
                model_capture: None,
                runner: None,
                source_refs: None,
            },
            None,
        )
        .await;
}
```

## Environments

This SDK allows you to configure different environments for API requests.

```rust
use sikaru::prelude::{*};

let config = ClientConfig {
    base_url: Environment::Default.url().to_string(),
    ..Default::default()
};
let client = Client::new(config).expect("Failed to build client");
```

## Errors

When the API returns a non-success status code (4xx or 5xx response), an error will be returned.

```rust
match client.agent_imports.create_agent_import(None)?.await {
    Ok(response) => {
        println!("Success: {:?}", response);
    },
    Err(ApiError::HTTP { status, message }) => {
        println!("API Error {}: {:?}", status, message);
    },
    Err(e) => {
        println!("Other error: {:?}", e);
    }
}
```

## Request Types

The SDK exports all request types as Rust structs. Simply import them from the crate to access them:

```rust
use sikaru::prelude::{*};

let request = CreateAgentImportRequest {
    ...
};
```

## Advanced

### Retries

Only GET and HEAD requests may retry automatically. Mutations are never automatically retried, even when retry options are enabled. Retain operation receipts and reconcile uncertain results before issuing another mutation.

## Contributing

Report bugs and proposed API changes through this repository. Include a minimal reproduction and never include API keys or private data.
