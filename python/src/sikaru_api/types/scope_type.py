
import typing

ScopeType = typing.Union[
    typing.Literal["global", "organization", "project", "product", "agent", "workflow", "cohort", "user", "run"],
    typing.Any,
]
