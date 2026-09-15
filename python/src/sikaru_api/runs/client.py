
import typing

from ..core.client_wrapper import AsyncClientWrapper, SyncClientWrapper
from ..core.request_options import RequestOptions
from ..types.event_delivery_request import EventDeliveryRequest
from ..types.managed_run import ManagedRun
from ..types.run_events import RunEvents
from ..types.tool_provider_ref_request import ToolProviderRefRequest
from .raw_client import AsyncRawRunsClient, RawRunsClient
from .types.approval_input_decision import ApprovalInputDecision
from .types.start_harness_run_request_execution_environment import StartHarnessRunRequestExecutionEnvironment
from .types.start_harness_run_request_run_mode import StartHarnessRunRequestRunMode
from .types.submit_tool_result_request_status import SubmitToolResultRequestStatus

# this is used as the default value for optional parameters
OMIT = typing.cast(typing.Any, ...)


class RunsClient:
    def __init__(self, *, client_wrapper: SyncClientWrapper):
        self._raw_client = RawRunsClient(client_wrapper=client_wrapper)

    @property
    def with_raw_response(self) -> RawRunsClient:
        """
        Retrieves a raw implementation of this client that returns raw responses.

        Returns
        -------
        RawRunsClient
        """
        return self._raw_client

    def start(
        self,
        project_id: str,
        harness_id: str,
        *,
        input: typing.Dict[str, typing.Any],
        policy: typing.Dict[str, typing.Any],
        product_context: typing.Dict[str, typing.Any],
        tenant_id: str,
        user_id: str,
        capability_grants: typing.Optional[typing.Sequence[str]] = OMIT,
        compute_provider_id: typing.Optional[str] = OMIT,
        conversation_id: typing.Optional[str] = OMIT,
        correlation_id: typing.Optional[str] = OMIT,
        event_delivery: typing.Optional[EventDeliveryRequest] = OMIT,
        execution_environment: typing.Optional[StartHarnessRunRequestExecutionEnvironment] = OMIT,
        job_id: typing.Optional[str] = OMIT,
        run_mode: typing.Optional[StartHarnessRunRequestRunMode] = OMIT,
        tool_provider_refs: typing.Optional[typing.Sequence[ToolProviderRefRequest]] = OMIT,
        trace_id: typing.Optional[str] = OMIT,
        request_options: typing.Optional[RequestOptions] = None,
    ) -> ManagedRun:
        """
        Parameters
        ----------
        project_id : str

        harness_id : str

        input : typing.Dict[str, typing.Any]

        policy : typing.Dict[str, typing.Any]

        product_context : typing.Dict[str, typing.Any]

        tenant_id : str

        user_id : str

        capability_grants : typing.Optional[typing.Sequence[str]]

        compute_provider_id : typing.Optional[str]

        conversation_id : typing.Optional[str]

        correlation_id : typing.Optional[str]

        event_delivery : typing.Optional[EventDeliveryRequest]

        execution_environment : typing.Optional[StartHarnessRunRequestExecutionEnvironment]

        job_id : typing.Optional[str]

        run_mode : typing.Optional[StartHarnessRunRequestRunMode]

        tool_provider_refs : typing.Optional[typing.Sequence[ToolProviderRefRequest]]

        trace_id : typing.Optional[str]

        request_options : typing.Optional[RequestOptions]
            Request-specific configuration.

        Returns
        -------
        ManagedRun
            Successful Response

        Examples
        --------
        from sikaru_api import SikaruApi

        client = SikaruApi(
            api_key="YOUR_API_KEY",
        )
        client.runs.start(
            project_id="project_id",
            harness_id="harness_id",
            input={"key": "value"},
            policy={"key": "value"},
            product_context={"key": "value"},
            tenant_id="tenant_id",
            user_id="user_id",
        )
        """
        _response = self._raw_client.start(
            project_id,
            harness_id,
            input=input,
            policy=policy,
            product_context=product_context,
            tenant_id=tenant_id,
            user_id=user_id,
            capability_grants=capability_grants,
            compute_provider_id=compute_provider_id,
            conversation_id=conversation_id,
            correlation_id=correlation_id,
            event_delivery=event_delivery,
            execution_environment=execution_environment,
            job_id=job_id,
            run_mode=run_mode,
            tool_provider_refs=tool_provider_refs,
            trace_id=trace_id,
            request_options=request_options,
        )
        return _response.data

    def get(
        self, project_id: str, run_id: str, *, request_options: typing.Optional[RequestOptions] = None
    ) -> ManagedRun:
        """
        Parameters
        ----------
        project_id : str

        run_id : str

        request_options : typing.Optional[RequestOptions]
            Request-specific configuration.

        Returns
        -------
        ManagedRun
            Successful Response

        Examples
        --------
        from sikaru_api import SikaruApi

        client = SikaruApi(
            api_key="YOUR_API_KEY",
        )
        client.runs.get(
            project_id="project_id",
            run_id="run_id",
        )
        """
        _response = self._raw_client.get(project_id, run_id, request_options=request_options)
        return _response.data

    def pending_actions(
        self, project_id: str, run_id: str, *, request_options: typing.Optional[RequestOptions] = None
    ) -> typing.Dict[str, typing.Any]:
        """
        Parameters
        ----------
        project_id : str

        run_id : str

        request_options : typing.Optional[RequestOptions]
            Request-specific configuration.

        Returns
        -------
        typing.Dict[str, typing.Any]
            Successful Response

        Examples
        --------
        from sikaru_api import SikaruApi

        client = SikaruApi(
            api_key="YOUR_API_KEY",
        )
        client.runs.pending_actions(
            project_id="project_id",
            run_id="run_id",
        )
        """
        _response = self._raw_client.pending_actions(project_id, run_id, request_options=request_options)
        return _response.data

    def cancel(
        self, project_id: str, run_id: str, *, request_options: typing.Optional[RequestOptions] = None
    ) -> typing.Dict[str, typing.Any]:
        """
        Parameters
        ----------
        project_id : str

        run_id : str

        request_options : typing.Optional[RequestOptions]
            Request-specific configuration.

        Returns
        -------
        typing.Dict[str, typing.Any]
            Successful Response

        Examples
        --------
        from sikaru_api import SikaruApi

        client = SikaruApi(
            api_key="YOUR_API_KEY",
        )
        client.runs.cancel(
            project_id="project_id",
            run_id="run_id",
        )
        """
        _response = self._raw_client.cancel(project_id, run_id, request_options=request_options)
        return _response.data

    def events(
        self,
        project_id: str,
        run_id: str,
        *,
        after: typing.Optional[str] = None,
        limit: typing.Optional[str] = None,
        stream: typing.Optional[str] = None,
        last_event_id: typing.Optional[str] = None,
        request_options: typing.Optional[RequestOptions] = None,
    ) -> RunEvents:
        """
        Parameters
        ----------
        project_id : str

        run_id : str

        after : typing.Optional[str]

        limit : typing.Optional[str]

        stream : typing.Optional[str]

        last_event_id : typing.Optional[str]

        request_options : typing.Optional[RequestOptions]
            Request-specific configuration.

        Returns
        -------
        RunEvents
            Successful Response

        Examples
        --------
        from sikaru_api import SikaruApi

        client = SikaruApi(
            api_key="YOUR_API_KEY",
        )
        client.runs.events(
            project_id="project_id",
            run_id="run_id",
        )
        """
        _response = self._raw_client.events(
            project_id,
            run_id,
            after=after,
            limit=limit,
            stream=stream,
            last_event_id=last_event_id,
            request_options=request_options,
        )
        return _response.data

    def recover(
        self,
        project_id: str,
        run_id: str,
        *,
        reason: typing.Optional[str] = OMIT,
        request_options: typing.Optional[RequestOptions] = None,
    ) -> typing.Dict[str, typing.Any]:
        """
        Parameters
        ----------
        project_id : str

        run_id : str

        reason : typing.Optional[str]

        request_options : typing.Optional[RequestOptions]
            Request-specific configuration.

        Returns
        -------
        typing.Dict[str, typing.Any]
            Successful Response

        Examples
        --------
        from sikaru_api import SikaruApi

        client = SikaruApi(
            api_key="YOUR_API_KEY",
        )
        client.runs.recover(
            project_id="project_id",
            run_id="run_id",
        )
        """
        _response = self._raw_client.recover(project_id, run_id, reason=reason, request_options=request_options)
        return _response.data

    def decide_approval(
        self,
        project_id: str,
        run_id: str,
        tool_call_id: str,
        *,
        decision: ApprovalInputDecision,
        idempotency_key: str,
        request_options: typing.Optional[RequestOptions] = None,
    ) -> typing.Dict[str, typing.Any]:
        """
        Parameters
        ----------
        project_id : str

        run_id : str

        tool_call_id : str

        decision : ApprovalInputDecision

        idempotency_key : str

        request_options : typing.Optional[RequestOptions]
            Request-specific configuration.

        Returns
        -------
        typing.Dict[str, typing.Any]
            Successful Response

        Examples
        --------
        from sikaru_api import SikaruApi

        client = SikaruApi(
            api_key="YOUR_API_KEY",
        )
        client.runs.decide_approval(
            project_id="project_id",
            run_id="run_id",
            tool_call_id="tool_call_id",
            decision="approved",
            idempotency_key="idempotency_key",
        )
        """
        _response = self._raw_client.decide_approval(
            project_id,
            run_id,
            tool_call_id,
            decision=decision,
            idempotency_key=idempotency_key,
            request_options=request_options,
        )
        return _response.data

    def submit_tool_result(
        self,
        project_id: str,
        run_id: str,
        *,
        capability_name: str,
        idempotency_key: str,
        payload: typing.Dict[str, typing.Any],
        status: SubmitToolResultRequestStatus,
        tool_call_id: str,
        tool_provider_id: str,
        request_options: typing.Optional[RequestOptions] = None,
    ) -> typing.Dict[str, typing.Any]:
        """
        Parameters
        ----------
        project_id : str

        run_id : str

        capability_name : str

        idempotency_key : str

        payload : typing.Dict[str, typing.Any]

        status : SubmitToolResultRequestStatus

        tool_call_id : str

        tool_provider_id : str

        request_options : typing.Optional[RequestOptions]
            Request-specific configuration.

        Returns
        -------
        typing.Dict[str, typing.Any]
            Successful Response

        Examples
        --------
        from sikaru_api import SikaruApi

        client = SikaruApi(
            api_key="YOUR_API_KEY",
        )
        client.runs.submit_tool_result(
            project_id="project_id",
            run_id="run_id",
            capability_name="capability_name",
            idempotency_key="idempotency_key",
            payload={"key": "value"},
            status="completed",
            tool_call_id="tool_call_id",
            tool_provider_id="tool_provider_id",
        )
        """
        _response = self._raw_client.submit_tool_result(
            project_id,
            run_id,
            capability_name=capability_name,
            idempotency_key=idempotency_key,
            payload=payload,
            status=status,
            tool_call_id=tool_call_id,
            tool_provider_id=tool_provider_id,
            request_options=request_options,
        )
        return _response.data


class AsyncRunsClient:
    def __init__(self, *, client_wrapper: AsyncClientWrapper):
        self._raw_client = AsyncRawRunsClient(client_wrapper=client_wrapper)

    @property
    def with_raw_response(self) -> AsyncRawRunsClient:
        """
        Retrieves a raw implementation of this client that returns raw responses.

        Returns
        -------
        AsyncRawRunsClient
        """
        return self._raw_client

    async def start(
        self,
        project_id: str,
        harness_id: str,
        *,
        input: typing.Dict[str, typing.Any],
        policy: typing.Dict[str, typing.Any],
        product_context: typing.Dict[str, typing.Any],
        tenant_id: str,
        user_id: str,
        capability_grants: typing.Optional[typing.Sequence[str]] = OMIT,
        compute_provider_id: typing.Optional[str] = OMIT,
        conversation_id: typing.Optional[str] = OMIT,
        correlation_id: typing.Optional[str] = OMIT,
        event_delivery: typing.Optional[EventDeliveryRequest] = OMIT,
        execution_environment: typing.Optional[StartHarnessRunRequestExecutionEnvironment] = OMIT,
        job_id: typing.Optional[str] = OMIT,
        run_mode: typing.Optional[StartHarnessRunRequestRunMode] = OMIT,
        tool_provider_refs: typing.Optional[typing.Sequence[ToolProviderRefRequest]] = OMIT,
        trace_id: typing.Optional[str] = OMIT,
        request_options: typing.Optional[RequestOptions] = None,
    ) -> ManagedRun:
        """
        Parameters
        ----------
        project_id : str

        harness_id : str

        input : typing.Dict[str, typing.Any]

        policy : typing.Dict[str, typing.Any]

        product_context : typing.Dict[str, typing.Any]

        tenant_id : str

        user_id : str

        capability_grants : typing.Optional[typing.Sequence[str]]

        compute_provider_id : typing.Optional[str]

        conversation_id : typing.Optional[str]

        correlation_id : typing.Optional[str]

        event_delivery : typing.Optional[EventDeliveryRequest]

        execution_environment : typing.Optional[StartHarnessRunRequestExecutionEnvironment]

        job_id : typing.Optional[str]

        run_mode : typing.Optional[StartHarnessRunRequestRunMode]

        tool_provider_refs : typing.Optional[typing.Sequence[ToolProviderRefRequest]]

        trace_id : typing.Optional[str]

        request_options : typing.Optional[RequestOptions]
            Request-specific configuration.

        Returns
        -------
        ManagedRun
            Successful Response

        Examples
        --------
        import asyncio

        from sikaru_api import AsyncSikaruApi

        client = AsyncSikaruApi(
            api_key="YOUR_API_KEY",
        )


        async def main() -> None:
            await client.runs.start(
                project_id="project_id",
                harness_id="harness_id",
                input={"key": "value"},
                policy={"key": "value"},
                product_context={"key": "value"},
                tenant_id="tenant_id",
                user_id="user_id",
            )


        asyncio.run(main())
        """
        _response = await self._raw_client.start(
            project_id,
            harness_id,
            input=input,
            policy=policy,
            product_context=product_context,
            tenant_id=tenant_id,
            user_id=user_id,
            capability_grants=capability_grants,
            compute_provider_id=compute_provider_id,
            conversation_id=conversation_id,
            correlation_id=correlation_id,
            event_delivery=event_delivery,
            execution_environment=execution_environment,
            job_id=job_id,
            run_mode=run_mode,
            tool_provider_refs=tool_provider_refs,
            trace_id=trace_id,
            request_options=request_options,
        )
        return _response.data

    async def get(
        self, project_id: str, run_id: str, *, request_options: typing.Optional[RequestOptions] = None
    ) -> ManagedRun:
        """
        Parameters
        ----------
        project_id : str

        run_id : str

        request_options : typing.Optional[RequestOptions]
            Request-specific configuration.

        Returns
        -------
        ManagedRun
            Successful Response

        Examples
        --------
        import asyncio

        from sikaru_api import AsyncSikaruApi

        client = AsyncSikaruApi(
            api_key="YOUR_API_KEY",
        )


        async def main() -> None:
            await client.runs.get(
                project_id="project_id",
                run_id="run_id",
            )


        asyncio.run(main())
        """
        _response = await self._raw_client.get(project_id, run_id, request_options=request_options)
        return _response.data

    async def pending_actions(
        self, project_id: str, run_id: str, *, request_options: typing.Optional[RequestOptions] = None
    ) -> typing.Dict[str, typing.Any]:
        """
        Parameters
        ----------
        project_id : str

        run_id : str

        request_options : typing.Optional[RequestOptions]
            Request-specific configuration.

        Returns
        -------
        typing.Dict[str, typing.Any]
            Successful Response

        Examples
        --------
        import asyncio

        from sikaru_api import AsyncSikaruApi

        client = AsyncSikaruApi(
            api_key="YOUR_API_KEY",
        )


        async def main() -> None:
            await client.runs.pending_actions(
                project_id="project_id",
                run_id="run_id",
            )


        asyncio.run(main())
        """
        _response = await self._raw_client.pending_actions(project_id, run_id, request_options=request_options)
        return _response.data

    async def cancel(
        self, project_id: str, run_id: str, *, request_options: typing.Optional[RequestOptions] = None
    ) -> typing.Dict[str, typing.Any]:
        """
        Parameters
        ----------
        project_id : str

        run_id : str

        request_options : typing.Optional[RequestOptions]
            Request-specific configuration.

        Returns
        -------
        typing.Dict[str, typing.Any]
            Successful Response

        Examples
        --------
        import asyncio

        from sikaru_api import AsyncSikaruApi

        client = AsyncSikaruApi(
            api_key="YOUR_API_KEY",
        )


        async def main() -> None:
            await client.runs.cancel(
                project_id="project_id",
                run_id="run_id",
            )


        asyncio.run(main())
        """
        _response = await self._raw_client.cancel(project_id, run_id, request_options=request_options)
        return _response.data

    async def events(
        self,
        project_id: str,
        run_id: str,
        *,
        after: typing.Optional[str] = None,
        limit: typing.Optional[str] = None,
        stream: typing.Optional[str] = None,
        last_event_id: typing.Optional[str] = None,
        request_options: typing.Optional[RequestOptions] = None,
    ) -> RunEvents:
        """
        Parameters
        ----------
        project_id : str

        run_id : str

        after : typing.Optional[str]

        limit : typing.Optional[str]

        stream : typing.Optional[str]

        last_event_id : typing.Optional[str]

        request_options : typing.Optional[RequestOptions]
            Request-specific configuration.

        Returns
        -------
        RunEvents
            Successful Response

        Examples
        --------
        import asyncio

        from sikaru_api import AsyncSikaruApi

        client = AsyncSikaruApi(
            api_key="YOUR_API_KEY",
        )


        async def main() -> None:
            await client.runs.events(
                project_id="project_id",
                run_id="run_id",
            )


        asyncio.run(main())
        """
        _response = await self._raw_client.events(
            project_id,
            run_id,
            after=after,
            limit=limit,
            stream=stream,
            last_event_id=last_event_id,
            request_options=request_options,
        )
        return _response.data

    async def recover(
        self,
        project_id: str,
        run_id: str,
        *,
        reason: typing.Optional[str] = OMIT,
        request_options: typing.Optional[RequestOptions] = None,
    ) -> typing.Dict[str, typing.Any]:
        """
        Parameters
        ----------
        project_id : str

        run_id : str

        reason : typing.Optional[str]

        request_options : typing.Optional[RequestOptions]
            Request-specific configuration.

        Returns
        -------
        typing.Dict[str, typing.Any]
            Successful Response

        Examples
        --------
        import asyncio

        from sikaru_api import AsyncSikaruApi

        client = AsyncSikaruApi(
            api_key="YOUR_API_KEY",
        )


        async def main() -> None:
            await client.runs.recover(
                project_id="project_id",
                run_id="run_id",
            )


        asyncio.run(main())
        """
        _response = await self._raw_client.recover(project_id, run_id, reason=reason, request_options=request_options)
        return _response.data

    async def decide_approval(
        self,
        project_id: str,
        run_id: str,
        tool_call_id: str,
        *,
        decision: ApprovalInputDecision,
        idempotency_key: str,
        request_options: typing.Optional[RequestOptions] = None,
    ) -> typing.Dict[str, typing.Any]:
        """
        Parameters
        ----------
        project_id : str

        run_id : str

        tool_call_id : str

        decision : ApprovalInputDecision

        idempotency_key : str

        request_options : typing.Optional[RequestOptions]
            Request-specific configuration.

        Returns
        -------
        typing.Dict[str, typing.Any]
            Successful Response

        Examples
        --------
        import asyncio

        from sikaru_api import AsyncSikaruApi

        client = AsyncSikaruApi(
            api_key="YOUR_API_KEY",
        )


        async def main() -> None:
            await client.runs.decide_approval(
                project_id="project_id",
                run_id="run_id",
                tool_call_id="tool_call_id",
                decision="approved",
                idempotency_key="idempotency_key",
            )


        asyncio.run(main())
        """
        _response = await self._raw_client.decide_approval(
            project_id,
            run_id,
            tool_call_id,
            decision=decision,
            idempotency_key=idempotency_key,
            request_options=request_options,
        )
        return _response.data

    async def submit_tool_result(
        self,
        project_id: str,
        run_id: str,
        *,
        capability_name: str,
        idempotency_key: str,
        payload: typing.Dict[str, typing.Any],
        status: SubmitToolResultRequestStatus,
        tool_call_id: str,
        tool_provider_id: str,
        request_options: typing.Optional[RequestOptions] = None,
    ) -> typing.Dict[str, typing.Any]:
        """
        Parameters
        ----------
        project_id : str

        run_id : str

        capability_name : str

        idempotency_key : str

        payload : typing.Dict[str, typing.Any]

        status : SubmitToolResultRequestStatus

        tool_call_id : str

        tool_provider_id : str

        request_options : typing.Optional[RequestOptions]
            Request-specific configuration.

        Returns
        -------
        typing.Dict[str, typing.Any]
            Successful Response

        Examples
        --------
        import asyncio

        from sikaru_api import AsyncSikaruApi

        client = AsyncSikaruApi(
            api_key="YOUR_API_KEY",
        )


        async def main() -> None:
            await client.runs.submit_tool_result(
                project_id="project_id",
                run_id="run_id",
                capability_name="capability_name",
                idempotency_key="idempotency_key",
                payload={"key": "value"},
                status="completed",
                tool_call_id="tool_call_id",
                tool_provider_id="tool_provider_id",
            )


        asyncio.run(main())
        """
        _response = await self._raw_client.submit_tool_result(
            project_id,
            run_id,
            capability_name=capability_name,
            idempotency_key=idempotency_key,
            payload=payload,
            status=status,
            tool_call_id=tool_call_id,
            tool_provider_id=tool_provider_id,
            request_options=request_options,
        )
        return _response.data
