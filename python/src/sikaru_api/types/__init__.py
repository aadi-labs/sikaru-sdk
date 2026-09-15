
# isort: skip_file

import typing
from importlib import import_module

if typing.TYPE_CHECKING:
    from .agent_import_eval_suite_request import AgentImportEvalSuiteRequest
    from .agent_import_improve_request import AgentImportImproveRequest
    from .agent_import_model_capture_request import AgentImportModelCaptureRequest
    from .agent_import_runner_request import AgentImportRunnerRequest
    from .agent_import_source_ref_request import AgentImportSourceRefRequest
    from .agent_import_source_ref_request_export_policy import AgentImportSourceRefRequestExportPolicy
    from .answer_ref import AnswerRef
    from .case_input import CaseInput
    from .create_managed_agent_source_request import CreateManagedAgentSourceRequest
    from .create_managed_agent_source_request_export_policy import CreateManagedAgentSourceRequestExportPolicy
    from .create_managed_agent_source_request_source_kind import CreateManagedAgentSourceRequestSourceKind
    from .create_parity_run_request import CreateParityRunRequest
    from .event_delivery_request import EventDeliveryRequest
    from .http_validation_error import HttpValidationError
    from .judgment_context import JudgmentContext
    from .judgment_target import JudgmentTarget
    from .judgment_target_kind import JudgmentTargetKind
    from .managed_run import ManagedRun
    from .open_inference_span import OpenInferenceSpan
    from .recover_run_request import RecoverRunRequest
    from .release_action_request import ReleaseActionRequest
    from .resume_improvement_input import ResumeImprovementInput
    from .resume_input import ResumeInput
    from .run_event import RunEvent
    from .run_events import RunEvents
    from .scope_type import ScopeType
    from .source_type import SourceType
    from .target_input import TargetInput
    from .tool_provider_ref_request import ToolProviderRefRequest
    from .tool_skill_source_request import ToolSkillSourceRequest
    from .trace_import_grouping_request import TraceImportGroupingRequest
    from .trace_import_options_request import TraceImportOptionsRequest
    from .trace_import_scope_request import TraceImportScopeRequest
    from .trace_metadata import TraceMetadata
    from .validation_error import ValidationError
    from .validation_error_loc_item import ValidationErrorLocItem
    from .versioned_trace_import_action import VersionedTraceImportAction
_dynamic_imports: typing.Dict[str, str] = {
    "AgentImportEvalSuiteRequest": ".agent_import_eval_suite_request",
    "AgentImportImproveRequest": ".agent_import_improve_request",
    "AgentImportModelCaptureRequest": ".agent_import_model_capture_request",
    "AgentImportRunnerRequest": ".agent_import_runner_request",
    "AgentImportSourceRefRequest": ".agent_import_source_ref_request",
    "AgentImportSourceRefRequestExportPolicy": ".agent_import_source_ref_request_export_policy",
    "AnswerRef": ".answer_ref",
    "CaseInput": ".case_input",
    "CreateManagedAgentSourceRequest": ".create_managed_agent_source_request",
    "CreateManagedAgentSourceRequestExportPolicy": ".create_managed_agent_source_request_export_policy",
    "CreateManagedAgentSourceRequestSourceKind": ".create_managed_agent_source_request_source_kind",
    "CreateParityRunRequest": ".create_parity_run_request",
    "EventDeliveryRequest": ".event_delivery_request",
    "HttpValidationError": ".http_validation_error",
    "JudgmentContext": ".judgment_context",
    "JudgmentTarget": ".judgment_target",
    "JudgmentTargetKind": ".judgment_target_kind",
    "ManagedRun": ".managed_run",
    "OpenInferenceSpan": ".open_inference_span",
    "RecoverRunRequest": ".recover_run_request",
    "ReleaseActionRequest": ".release_action_request",
    "ResumeImprovementInput": ".resume_improvement_input",
    "ResumeInput": ".resume_input",
    "RunEvent": ".run_event",
    "RunEvents": ".run_events",
    "ScopeType": ".scope_type",
    "SourceType": ".source_type",
    "TargetInput": ".target_input",
    "ToolProviderRefRequest": ".tool_provider_ref_request",
    "ToolSkillSourceRequest": ".tool_skill_source_request",
    "TraceImportGroupingRequest": ".trace_import_grouping_request",
    "TraceImportOptionsRequest": ".trace_import_options_request",
    "TraceImportScopeRequest": ".trace_import_scope_request",
    "TraceMetadata": ".trace_metadata",
    "ValidationError": ".validation_error",
    "ValidationErrorLocItem": ".validation_error_loc_item",
    "VersionedTraceImportAction": ".versioned_trace_import_action",
}


def __getattr__(attr_name: str) -> typing.Any:
    module_name = _dynamic_imports.get(attr_name)
    if module_name is None:
        raise AttributeError(f"No {attr_name} found in _dynamic_imports for module name -> {__name__}")
    try:
        module = import_module(module_name, __package__)
        if module_name == f".{attr_name}":
            return module
        else:
            return getattr(module, attr_name)
    except ImportError as e:
        raise ImportError(f"Failed to import {attr_name} from {module_name}: {e}") from e
    except AttributeError as e:
        raise AttributeError(f"Failed to get {attr_name} from {module_name}: {e}") from e


def __dir__():
    lazy_attrs = list(_dynamic_imports.keys())
    return sorted(lazy_attrs)


__all__ = [
    "AgentImportEvalSuiteRequest",
    "AgentImportImproveRequest",
    "AgentImportModelCaptureRequest",
    "AgentImportRunnerRequest",
    "AgentImportSourceRefRequest",
    "AgentImportSourceRefRequestExportPolicy",
    "AnswerRef",
    "CaseInput",
    "CreateManagedAgentSourceRequest",
    "CreateManagedAgentSourceRequestExportPolicy",
    "CreateManagedAgentSourceRequestSourceKind",
    "CreateParityRunRequest",
    "EventDeliveryRequest",
    "HttpValidationError",
    "JudgmentContext",
    "JudgmentTarget",
    "JudgmentTargetKind",
    "ManagedRun",
    "OpenInferenceSpan",
    "RecoverRunRequest",
    "ReleaseActionRequest",
    "ResumeImprovementInput",
    "ResumeInput",
    "RunEvent",
    "RunEvents",
    "ScopeType",
    "SourceType",
    "TargetInput",
    "ToolProviderRefRequest",
    "ToolSkillSourceRequest",
    "TraceImportGroupingRequest",
    "TraceImportOptionsRequest",
    "TraceImportScopeRequest",
    "TraceMetadata",
    "ValidationError",
    "ValidationErrorLocItem",
    "VersionedTraceImportAction",
]
