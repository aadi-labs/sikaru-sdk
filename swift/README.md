# Sikaru Swift Library

![SwiftPM compatible](https://img.shields.io/badge/SwiftPM-compatible-orange.svg)

The Sikaru Swift library provides convenient access to the Sikaru APIs from Swift.

## Table of Contents

- [Requirements](#requirements)
- [Installation](#installation)
- [Reference](#reference)
- [Usage](#usage)
- [Environments](#environments)
- [Errors](#errors)
- [Request Types](#request-types)
- [Advanced](#advanced)
  - [Additional Headers](#additional-headers)
  - [Additional Query String Parameters](#additional-query-string-parameters)
  - [Timeouts](#timeouts)
  - [Custom Networking Client](#custom-networking-client)
- [Contributing](#contributing)

## Requirements

This SDK requires:
- Swift 5.7+
- iOS 15+
- macOS 12+
- tvOS 15+
- watchOS 8+

## Installation

With Swift Package Manager (SPM), add the following to the top-level `dependencies` array within your `Package.swift` file:

```swift
dependencies: [
    .package(url: "https://github.com/aadi-labs/sikaru-sdk", from: "0.1.0"),
]
```

## Reference

A full reference for this library is available [here](./reference.md).

## Usage

Instantiate and use the client with the following:

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.agentImports.createAgentImport(
        projectId: "project_id",
        request: .init(
            improve: AgentImportImproveRequest(
                mode: "mode",
                objective: "objective",
                promotionGate: "promotionGate"
            ),
            name: "name"
        )
    )
}

try await main()
```

## Environments

This SDK allows you to configure different environments for API requests.

```swift
import Sikaru

let client = Sikaru(
    apiKey: "YOUR_API_KEY",
    environment: .default
)
```

## Errors

The SDK throws a single error enum for all failures. Client-side issues encoding/decoding failures and network errors use dedicated cases, while non-success HTTP responses are wrapped in an `HTTPError` that exposes the status code, a simple classification and an optional decoded message.

```swift
import Sikaru

let client = Sikaru(apiKey: "YOUR_API_KEY")

do {
    let response = try await client.agentImports.createAgentImport(...)
    // Handle successful response
} catch let error as SikaruError {
    switch error {
    case .httpError(let httpError):
        print("Status code:", httpError.statusCode)
        print("Kind:", httpError.kind)
        print("Message:", httpError.body?.message ?? httpError.localizedDescription)
    case .encodingError(let underlying):
        print("Encoding error:", underlying)
    case .networkError(let underlying):
        print("Network error:", underlying)
    default:
        print("Other client error:", error)
    }
} catch {
    print("Unexpected error:", error)
}
```

## Request Types

The SDK exports all request types as Swift structs. Simply import the SDK module to access them:

```swift
import Sikaru

let request = Requests.CreateAgentImportRequest(
    ...
)
```

## Advanced

### Additional Headers

If you would like to send additional headers as part of the request, use the `additionalHeaders` request option.

```swift
try await client.agentImports.createAgentImport(..., requestOptions: .init(
    additionalHeaders: [
        "X-Custom-Header": "custom value"
    ]
))
```

### Additional Query String Parameters

If you would like to send additional query string parameters as part of the request, use the `additionalQueryParameters` request option.

```swift
try await client.agentImports.createAgentImport(..., requestOptions: .init(
    additionalQueryParameters: [
        "custom_query_param_key": "custom_query_param_value"
    ]
))
```

### Timeouts

The SDK defaults to a 60-second timeout. Use the `timeout` option to configure this behavior.

```swift
try await client.agentImports.createAgentImport(..., requestOptions: .init(
    timeout: 30
))
```

### Custom Networking Client

The SDK allows you to customize the underlying `URLSession` used for HTTP requests. Use the `urlSession` option to provide your own configured `URLSession` instance.

```swift
import Foundation
import Sikaru

let client = Sikaru(
    apiKey: "YOUR_API_KEY",
    urlSession: // Provide your implementation here
)
```

## Contributing

Report bugs and proposed API changes through this repository. Include a minimal reproduction and never include API keys or private data.
