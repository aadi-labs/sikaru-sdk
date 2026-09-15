# Sikaru Python Library

[![pypi](https://img.shields.io/pypi/v/sikaru_api)](https://pypi.python.org/pypi/sikaru_api)

The Sikaru Python library provides convenient access to the Sikaru APIs from Python.

## Table of Contents

- [Installation](#installation)
- [Reference](#reference)
- [Usage](#usage)
- [Environments](#environments)
- [Async Client](#async-client)
- [Exception Handling](#exception-handling)
- [Advanced](#advanced)
  - [Access Raw Response Data](#access-raw-response-data)
  - [Retries](#retries)
  - [Timeouts](#timeouts)
  - [Custom Client](#custom-client)
- [Contributing](#contributing)

## Installation

```sh
pip install sikaru_api
```

## Reference

A full reference for this library is available [here](./reference.md).

## Usage

Instantiate and use the client with the following:

```python
from sikaru_api import SikaruApi, AgentImportImproveRequest

client = SikaruApi(
    api_key="<token>",
)

client.agent_imports.create_agent_import(
    project_id="project_id",
    improve=AgentImportImproveRequest(
        mode="mode",
        objective="objective",
        promotion_gate="promotionGate",
    ),
    name="name",
)
```

## Environments

This SDK allows you to configure different environments for API requests.

```python
from sikaru_api import SikaruApi
from sikaru_api.environment import SikaruApiEnvironment

client = SikaruApi(
    environment=SikaruApiEnvironment.DEFAULT,
)
```

## Async Client

The SDK also exports an `async` client so that you can make non-blocking calls to our API. Note that if you are constructing an Async httpx client class to pass into this client, use `httpx.AsyncClient()` instead of `httpx.Client()` (e.g. for the `httpx_client` parameter of this client).

```python
import asyncio

from sikaru_api import AsyncSikaruApi

client = AsyncSikaruApi(
    api_key="<token>",
)


async def main() -> None:
    await client.agent_imports.create_agent_import(
        project_id="project_id",
        improve=AgentImportImproveRequest(
            mode="mode",
            objective="objective",
            promotion_gate="promotionGate",
        ),
        name="name",
    )


asyncio.run(main())
```

## Exception Handling

When the API returns a non-success status code (4xx or 5xx response), a subclass of the following error
will be thrown.

```python
from sikaru_api.core.api_error import ApiError

try:
    client.agent_imports.create_agent_import(...)
except ApiError as e:
    print(e.status_code)
    print(e.body)
```

## Advanced

### Access Raw Response Data

The SDK provides access to raw response data, including headers, through the `.with_raw_response` property.
The `.with_raw_response` property returns a "raw" client that can be used to access the `.headers` and `.data` attributes.

```python
from sikaru_api import SikaruApi

client = SikaruApi(...)
response = client.agent_imports.with_raw_response.create_agent_import(...)
print(response.headers)  # access the response headers
print(response.status_code)  # access the response status code
print(response.data)  # access the underlying object
```

### Retries

Only GET and HEAD requests may retry automatically. Mutations are never automatically retried, even when retry options are enabled. Retain operation receipts and reconcile uncertain results before issuing another mutation.

## Contributing

Report bugs and proposed API changes through this repository. Include a minimal reproduction and never include API keys or private data.
