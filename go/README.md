# Sikaru Go Library


The Sikaru Go library provides convenient access to the Sikaru APIs from Go.

## Table of Contents

- [Reference](#reference)
- [Usage](#usage)
- [Environments](#environments)
- [Errors](#errors)
- [Request Options](#request-options)
- [Advanced](#advanced)
  - [Response Headers](#response-headers)
  - [Retries](#retries)
  - [Timeouts](#timeouts)
  - [Explicit Null](#explicit-null)
- [Contributing](#contributing)

## Reference

A full reference for this library is available [here](./reference.md).

## Usage

Instantiate and use the client with the following:

```go
package example

import (
    context "context"

    _go "github.com/aadi-labs/sikaru-sdk/go"
    client "github.com/aadi-labs/sikaru-sdk/go/client"
    option "github.com/aadi-labs/sikaru-sdk/go/option"
)

func do() {
    client := client.New(
        option.WithAPIKey(
            "<token>",
        ),
    )
    request := &_go.CreateAgentImportRequest{
        Improve: &_go.AgentImportImproveRequest{
            Mode: "mode",
            Objective: "objective",
            PromotionGate: "promotionGate",
        },
        Name: "name",
    }
    client.AgentImports.CreateAgentImport(
        context.TODO(),
        "project_id",
        request,
    )
}
```

## Environments

You can choose between different environments by using the `option.WithBaseURL` option. You can configure any arbitrary base
URL, which is particularly useful in test environments.

```go
client := client.NewClient(
    option.WithBaseURL(api.Environments.Default),
)
```

## Errors

Structured error types are returned from API calls that return non-success status codes. These errors are compatible
with the `errors.Is` and `errors.As` APIs, so you can access the error like so:

```go
response, err := client.AgentImports.CreateAgentImport(...)
if err != nil {
    var apiError *core.APIError
    if errors.As(err, &apiError) {
        // Do something with the API error ...
    }
    return err
}
```

## Request Options

A variety of request options are included to adapt the behavior of the library, which includes configuring
authorization tokens, or providing your own instrumented `*http.Client`.

These request options can either be
specified on the client so that they're applied on every request, or for an individual request, like so:

> Providing your own `*http.Client` is recommended. Otherwise, the `http.DefaultClient` will be used,
> and your client will wait indefinitely for a response (unless the per-request, context-based timeout
> is used).

```go
// Specify default options applied on every request.
client := client.NewClient(
    option.WithAPIKey("<YOUR_API_KEY>"),
    option.WithHTTPClient(
        &http.Client{
            Timeout: 5 * time.Second,
        },
    ),
)

// Specify options for an individual request.
response, err := client.AgentImports.CreateAgentImport(
    ...,
    option.WithAPIKey("<YOUR_API_KEY>"),
)
```

When credentials are not explicitly provided, the client reads them from the
following environment variables:

- `SIKARU_API_KEY`

## Advanced

### Response Headers

You can access the raw HTTP response data by using the `WithRawResponse` field on the client. This is useful
when you need to examine the response headers received from the API call. (When the endpoint is paginated,
the raw HTTP response data will be included automatically in the Page response object.)

```go
response, err := client.AgentImports.WithRawResponse.CreateAgentImport(...)
if err != nil {
    return err
}
fmt.Printf("Got response headers: %v", response.Header)
fmt.Printf("Got status code: %d", response.StatusCode)
```

### Retries

Only GET and HEAD requests may retry automatically. Mutations are never automatically retried, even when retry options are enabled. Retain operation receipts and reconcile uncertain results before issuing another mutation.

## Contributing

Report bugs and proposed API changes through this repository. Include a minimal reproduction and never include API keys or private data.
