
import typing

CreateTraceImportRequestProvider = typing.Union[
    typing.Literal["langsmith", "langfuse", "braintrust", "logfire", "harbor", "opentelemetry", "openinference"],
    typing.Any,
]
