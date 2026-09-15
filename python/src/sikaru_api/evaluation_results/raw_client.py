
import typing
from json.decoder import JSONDecodeError

from ..core.api_error import ApiError
from ..core.client_wrapper import AsyncClientWrapper, SyncClientWrapper
from ..core.http_response import AsyncHttpResponse, HttpResponse
from ..core.jsonable_encoder import encode_path_param
from ..core.parse_error import ParsingError
from ..core.pydantic_utilities import parse_obj_as
from ..core.request_options import RequestOptions
from ..core.serialization import convert_and_respect_annotation_metadata
from ..errors.unprocessable_entity_error import UnprocessableEntityError
from ..types.http_validation_error import HttpValidationError
from ..types.judgment_context import JudgmentContext
from ..types.judgment_target import JudgmentTarget
from .types.evaluation_result_environment import EvaluationResultEnvironment
from .types.evaluation_result_source import EvaluationResultSource
from .types.evaluation_result_verdict import EvaluationResultVerdict
from .types.list_results_evaluation_results_request_environment import ListResultsEvaluationResultsRequestEnvironment
from .types.list_results_evaluation_results_request_verdict import ListResultsEvaluationResultsRequestVerdict
from pydantic import ValidationError

# this is used as the default value for optional parameters
OMIT = typing.cast(typing.Any, ...)


class RawEvaluationResultsClient:
    def __init__(self, *, client_wrapper: SyncClientWrapper):
        self._client_wrapper = client_wrapper

    def list_results(
        self,
        project_id: str,
        *,
        environment: typing.Optional[ListResultsEvaluationResultsRequestEnvironment] = None,
        evaluator: typing.Optional[str] = None,
        verdict: typing.Optional[ListResultsEvaluationResultsRequestVerdict] = None,
        limit: typing.Optional[int] = None,
        cursor: typing.Optional[str] = None,
        request_options: typing.Optional[RequestOptions] = None,
    ) -> HttpResponse[typing.Dict[str, typing.Any]]:
        """
        Parameters
        ----------
        project_id : str

        environment : typing.Optional[ListResultsEvaluationResultsRequestEnvironment]

        evaluator : typing.Optional[str]

        verdict : typing.Optional[ListResultsEvaluationResultsRequestVerdict]

        limit : typing.Optional[int]

        cursor : typing.Optional[str]

        request_options : typing.Optional[RequestOptions]
            Request-specific configuration.

        Returns
        -------
        HttpResponse[typing.Dict[str, typing.Any]]
            Successful Response
        """
        _response = self._client_wrapper.httpx_client.request(
            f"v1/projects/{encode_path_param(project_id)}/evaluation-results",
            method="GET",
            params={
                "environment": environment,
                "evaluator": evaluator,
                "verdict": verdict,
                "limit": limit,
                "cursor": cursor,
            },
            request_options=request_options,
        )
        try:
            if 200 <= _response.status_code < 300:
                _data = typing.cast(
                    typing.Dict[str, typing.Any],
                    parse_obj_as(
                        type_=typing.Dict[str, typing.Any],  # type: ignore
                        object_=_response.json(),
                    ),
                )
                return HttpResponse(response=_response, data=_data)
            if _response.status_code == 422:
                raise UnprocessableEntityError(
                    headers=dict(_response.headers),
                    body=typing.cast(
                        HttpValidationError,
                        parse_obj_as(
                            type_=HttpValidationError,  # type: ignore
                            object_=_response.json(),
                        ),
                    ),
                )
            _response_json = _response.json()
        except JSONDecodeError:
            raise ApiError(status_code=_response.status_code, headers=dict(_response.headers), body=_response.text)
        except ValidationError as e:
            raise ParsingError(
                status_code=_response.status_code, headers=dict(_response.headers), body=_response.json(), cause=e
            )
        raise ApiError(status_code=_response.status_code, headers=dict(_response.headers), body=_response_json)

    def record_result(
        self,
        project_id: str,
        *,
        environment: EvaluationResultEnvironment,
        evaluator: str,
        id: str,
        public_reason: str,
        revision: str,
        source: EvaluationResultSource,
        trace_id: str,
        verdict: EvaluationResultVerdict,
        adjudicates: typing.Optional[typing.Sequence[str]] = OMIT,
        context: typing.Optional[JudgmentContext] = OMIT,
        target: typing.Optional[JudgmentTarget] = OMIT,
        request_options: typing.Optional[RequestOptions] = None,
    ) -> HttpResponse[typing.Dict[str, typing.Any]]:
        """
        Parameters
        ----------
        project_id : str

        environment : EvaluationResultEnvironment

        evaluator : str

        id : str

        public_reason : str

        revision : str

        source : EvaluationResultSource

        trace_id : str

        verdict : EvaluationResultVerdict

        adjudicates : typing.Optional[typing.Sequence[str]]

        context : typing.Optional[JudgmentContext]

        target : typing.Optional[JudgmentTarget]

        request_options : typing.Optional[RequestOptions]
            Request-specific configuration.

        Returns
        -------
        HttpResponse[typing.Dict[str, typing.Any]]
            Successful Response
        """
        _response = self._client_wrapper.httpx_client.request(
            f"v1/projects/{encode_path_param(project_id)}/evaluation-results",
            method="POST",
            json={
                "adjudicates": adjudicates,
                "context": convert_and_respect_annotation_metadata(
                    object_=context, annotation=typing.Optional[JudgmentContext], direction="write"
                ),
                "environment": environment,
                "evaluator": evaluator,
                "id": id,
                "publicReason": public_reason,
                "revision": revision,
                "source": source,
                "target": convert_and_respect_annotation_metadata(
                    object_=target, annotation=typing.Optional[JudgmentTarget], direction="write"
                ),
                "traceId": trace_id,
                "verdict": verdict,
            },
            headers={
                "content-type": "application/json",
            },
            request_options=request_options,
            omit=OMIT,
        )
        try:
            if 200 <= _response.status_code < 300:
                _data = typing.cast(
                    typing.Dict[str, typing.Any],
                    parse_obj_as(
                        type_=typing.Dict[str, typing.Any],  # type: ignore
                        object_=_response.json(),
                    ),
                )
                return HttpResponse(response=_response, data=_data)
            if _response.status_code == 422:
                raise UnprocessableEntityError(
                    headers=dict(_response.headers),
                    body=typing.cast(
                        HttpValidationError,
                        parse_obj_as(
                            type_=HttpValidationError,  # type: ignore
                            object_=_response.json(),
                        ),
                    ),
                )
            _response_json = _response.json()
        except JSONDecodeError:
            raise ApiError(status_code=_response.status_code, headers=dict(_response.headers), body=_response.text)
        except ValidationError as e:
            raise ParsingError(
                status_code=_response.status_code, headers=dict(_response.headers), body=_response.json(), cause=e
            )
        raise ApiError(status_code=_response.status_code, headers=dict(_response.headers), body=_response_json)


class AsyncRawEvaluationResultsClient:
    def __init__(self, *, client_wrapper: AsyncClientWrapper):
        self._client_wrapper = client_wrapper

    async def list_results(
        self,
        project_id: str,
        *,
        environment: typing.Optional[ListResultsEvaluationResultsRequestEnvironment] = None,
        evaluator: typing.Optional[str] = None,
        verdict: typing.Optional[ListResultsEvaluationResultsRequestVerdict] = None,
        limit: typing.Optional[int] = None,
        cursor: typing.Optional[str] = None,
        request_options: typing.Optional[RequestOptions] = None,
    ) -> AsyncHttpResponse[typing.Dict[str, typing.Any]]:
        """
        Parameters
        ----------
        project_id : str

        environment : typing.Optional[ListResultsEvaluationResultsRequestEnvironment]

        evaluator : typing.Optional[str]

        verdict : typing.Optional[ListResultsEvaluationResultsRequestVerdict]

        limit : typing.Optional[int]

        cursor : typing.Optional[str]

        request_options : typing.Optional[RequestOptions]
            Request-specific configuration.

        Returns
        -------
        AsyncHttpResponse[typing.Dict[str, typing.Any]]
            Successful Response
        """
        _response = await self._client_wrapper.httpx_client.request(
            f"v1/projects/{encode_path_param(project_id)}/evaluation-results",
            method="GET",
            params={
                "environment": environment,
                "evaluator": evaluator,
                "verdict": verdict,
                "limit": limit,
                "cursor": cursor,
            },
            request_options=request_options,
        )
        try:
            if 200 <= _response.status_code < 300:
                _data = typing.cast(
                    typing.Dict[str, typing.Any],
                    parse_obj_as(
                        type_=typing.Dict[str, typing.Any],  # type: ignore
                        object_=_response.json(),
                    ),
                )
                return AsyncHttpResponse(response=_response, data=_data)
            if _response.status_code == 422:
                raise UnprocessableEntityError(
                    headers=dict(_response.headers),
                    body=typing.cast(
                        HttpValidationError,
                        parse_obj_as(
                            type_=HttpValidationError,  # type: ignore
                            object_=_response.json(),
                        ),
                    ),
                )
            _response_json = _response.json()
        except JSONDecodeError:
            raise ApiError(status_code=_response.status_code, headers=dict(_response.headers), body=_response.text)
        except ValidationError as e:
            raise ParsingError(
                status_code=_response.status_code, headers=dict(_response.headers), body=_response.json(), cause=e
            )
        raise ApiError(status_code=_response.status_code, headers=dict(_response.headers), body=_response_json)

    async def record_result(
        self,
        project_id: str,
        *,
        environment: EvaluationResultEnvironment,
        evaluator: str,
        id: str,
        public_reason: str,
        revision: str,
        source: EvaluationResultSource,
        trace_id: str,
        verdict: EvaluationResultVerdict,
        adjudicates: typing.Optional[typing.Sequence[str]] = OMIT,
        context: typing.Optional[JudgmentContext] = OMIT,
        target: typing.Optional[JudgmentTarget] = OMIT,
        request_options: typing.Optional[RequestOptions] = None,
    ) -> AsyncHttpResponse[typing.Dict[str, typing.Any]]:
        """
        Parameters
        ----------
        project_id : str

        environment : EvaluationResultEnvironment

        evaluator : str

        id : str

        public_reason : str

        revision : str

        source : EvaluationResultSource

        trace_id : str

        verdict : EvaluationResultVerdict

        adjudicates : typing.Optional[typing.Sequence[str]]

        context : typing.Optional[JudgmentContext]

        target : typing.Optional[JudgmentTarget]

        request_options : typing.Optional[RequestOptions]
            Request-specific configuration.

        Returns
        -------
        AsyncHttpResponse[typing.Dict[str, typing.Any]]
            Successful Response
        """
        _response = await self._client_wrapper.httpx_client.request(
            f"v1/projects/{encode_path_param(project_id)}/evaluation-results",
            method="POST",
            json={
                "adjudicates": adjudicates,
                "context": convert_and_respect_annotation_metadata(
                    object_=context, annotation=typing.Optional[JudgmentContext], direction="write"
                ),
                "environment": environment,
                "evaluator": evaluator,
                "id": id,
                "publicReason": public_reason,
                "revision": revision,
                "source": source,
                "target": convert_and_respect_annotation_metadata(
                    object_=target, annotation=typing.Optional[JudgmentTarget], direction="write"
                ),
                "traceId": trace_id,
                "verdict": verdict,
            },
            headers={
                "content-type": "application/json",
            },
            request_options=request_options,
            omit=OMIT,
        )
        try:
            if 200 <= _response.status_code < 300:
                _data = typing.cast(
                    typing.Dict[str, typing.Any],
                    parse_obj_as(
                        type_=typing.Dict[str, typing.Any],  # type: ignore
                        object_=_response.json(),
                    ),
                )
                return AsyncHttpResponse(response=_response, data=_data)
            if _response.status_code == 422:
                raise UnprocessableEntityError(
                    headers=dict(_response.headers),
                    body=typing.cast(
                        HttpValidationError,
                        parse_obj_as(
                            type_=HttpValidationError,  # type: ignore
                            object_=_response.json(),
                        ),
                    ),
                )
            _response_json = _response.json()
        except JSONDecodeError:
            raise ApiError(status_code=_response.status_code, headers=dict(_response.headers), body=_response.text)
        except ValidationError as e:
            raise ParsingError(
                status_code=_response.status_code, headers=dict(_response.headers), body=_response.json(), cause=e
            )
        raise ApiError(status_code=_response.status_code, headers=dict(_response.headers), body=_response_json)
