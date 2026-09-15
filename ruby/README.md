# Sikaru Ruby Library


The Sikaru Ruby library provides convenient access to the Sikaru APIs from Ruby.

## Table of Contents

- [Reference](#reference)
- [Usage](#usage)
- [Environments](#environments)
- [Errors](#errors)
- [Advanced](#advanced)
  - [Retries](#retries)
  - [Timeouts](#timeouts)
  - [Additional Headers](#additional-headers)
  - [Additional Query Parameters](#additional-query-parameters)
- [Contributing](#contributing)

## Reference

A full reference for this library is available [here](./reference.md).

## Usage

Instantiate and use the client with the following:

```ruby
require "sikaru"

client = Sikaru::Client.new(api_key: "<token>")

client.agent_imports.create_agent_import(
  project_id: "project_id",
  improve: {
    mode: "mode",
    objective: "objective",
    promotion_gate: "promotionGate"
  },
  name: "name"
)
```

## Environments

This SDK allows you to configure different environments or custom URLs for API requests. You can either use the predefined environments or specify your own custom URL.
### Environments
```ruby
require "Sikaru"

Sikaru = Sikaru::Client.new(
    base_url: Sikaru::Environment::DEFAULT
)
```

### Custom URL
```ruby
require "Sikaru"

client = Sikaru::Client.new(
    base_url: "https://example.com"
)
```

## Errors

Failed API calls will raise errors that can be rescued from granularly.

```ruby
require "Sikaru"

client = Sikaru::Client.new(
    base_url: "https://example.com"
)

begin
    result = client.agent_imports.create_agent_import
rescue Sikaru::Errors::TimeoutError
    puts "API didn't respond before our timeout elapsed"
rescue Sikaru::Errors::ServiceUnavailableError
    puts "API returned status 503, is probably overloaded, try again later"
rescue Sikaru::Errors::ServerError
    puts "API returned some other 5xx status, this is probably a bug"
rescue Sikaru::Errors::ResponseError => e
    puts "API returned an unexpected status other than 5xx: #{e.code} #{e.message}"
rescue Sikaru::Errors::ApiError => e
    puts "Some other error occurred when calling the API: #{e.message}"
end
```

## Advanced

### Retries

Only GET and HEAD requests may retry automatically. Mutations are never automatically retried, even when retry options are enabled. Retain operation receipts and reconcile uncertain results before issuing another mutation.

## Contributing

Report bugs and proposed API changes through this repository. Include a minimal reproduction and never include API keys or private data.
