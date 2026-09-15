
import typing

from ..core.client_wrapper import AsyncClientWrapper, SyncClientWrapper
from ..core.request_options import RequestOptions
from .raw_client import AsyncRawSessionsClient, RawSessionsClient

# this is used as the default value for optional parameters
OMIT = typing.cast(typing.Any, ...)


class SessionsClient:
    def __init__(self, *, client_wrapper: SyncClientWrapper):
        self._raw_client = RawSessionsClient(client_wrapper=client_wrapper)

    @property
    def with_raw_response(self) -> RawSessionsClient:
        """
        Retrieves a raw implementation of this client that returns raw responses.

        Returns
        -------
        RawSessionsClient
        """
        return self._raw_client

    def get_managed_session(
        self, project_id: str, session_id: str, *, request_options: typing.Optional[RequestOptions] = None
    ) -> typing.Dict[str, typing.Any]:
        """
        Parameters
        ----------
        project_id : str

        session_id : str

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
        client.sessions.get_managed_session(
            project_id="project_id",
            session_id="session_id",
        )
        """
        _response = self._raw_client.get_managed_session(project_id, session_id, request_options=request_options)
        return _response.data

    def list_managed_session_events(
        self,
        project_id: str,
        session_id: str,
        *,
        after: typing.Optional[str] = None,
        limit: typing.Optional[str] = None,
        request_options: typing.Optional[RequestOptions] = None,
    ) -> typing.Dict[str, typing.Any]:
        """
        Parameters
        ----------
        project_id : str

        session_id : str

        after : typing.Optional[str]

        limit : typing.Optional[str]

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
        client.sessions.list_managed_session_events(
            project_id="project_id",
            session_id="session_id",
        )
        """
        _response = self._raw_client.list_managed_session_events(
            project_id, session_id, after=after, limit=limit, request_options=request_options
        )
        return _response.data

    def list_managed_session_files(
        self, project_id: str, session_id: str, *, request_options: typing.Optional[RequestOptions] = None
    ) -> typing.Dict[str, typing.Any]:
        """
        Parameters
        ----------
        project_id : str

        session_id : str

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
        client.sessions.list_managed_session_files(
            project_id="project_id",
            session_id="session_id",
        )
        """
        _response = self._raw_client.list_managed_session_files(project_id, session_id, request_options=request_options)
        return _response.data

    def create_managed_interpreter(
        self,
        project_id: str,
        session_id: str,
        *,
        language: str,
        resource_limits: typing.Optional[typing.Dict[str, typing.Any]] = OMIT,
        request_options: typing.Optional[RequestOptions] = None,
    ) -> typing.Dict[str, typing.Any]:
        """
        Parameters
        ----------
        project_id : str

        session_id : str

        language : str

        resource_limits : typing.Optional[typing.Dict[str, typing.Any]]

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
        client.sessions.create_managed_interpreter(
            project_id="project_id",
            session_id="session_id",
            language="language",
        )
        """
        _response = self._raw_client.create_managed_interpreter(
            project_id, session_id, language=language, resource_limits=resource_limits, request_options=request_options
        )
        return _response.data

    def execute_managed_interpreter(
        self,
        project_id: str,
        session_id: str,
        interpreter_id: str,
        *,
        code: str,
        timeout_seconds: int,
        request_options: typing.Optional[RequestOptions] = None,
    ) -> typing.Dict[str, typing.Any]:
        """
        Parameters
        ----------
        project_id : str

        session_id : str

        interpreter_id : str

        code : str

        timeout_seconds : int

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
        client.sessions.execute_managed_interpreter(
            project_id="project_id",
            session_id="session_id",
            interpreter_id="interpreter_id",
            code="code",
            timeout_seconds=1,
        )
        """
        _response = self._raw_client.execute_managed_interpreter(
            project_id,
            session_id,
            interpreter_id,
            code=code,
            timeout_seconds=timeout_seconds,
            request_options=request_options,
        )
        return _response.data

    def list_managed_session_plan(
        self, project_id: str, session_id: str, *, request_options: typing.Optional[RequestOptions] = None
    ) -> typing.Dict[str, typing.Any]:
        """
        Parameters
        ----------
        project_id : str

        session_id : str

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
        client.sessions.list_managed_session_plan(
            project_id="project_id",
            session_id="session_id",
        )
        """
        _response = self._raw_client.list_managed_session_plan(project_id, session_id, request_options=request_options)
        return _response.data

    def start_managed_sandbox_execution(
        self,
        project_id: str,
        session_id: str,
        *,
        context_package_ref: str,
        idempotency_key: str,
        timeout_seconds: int,
        workflow_ref: str,
        request_options: typing.Optional[RequestOptions] = None,
    ) -> typing.Dict[str, typing.Any]:
        """
        Parameters
        ----------
        project_id : str

        session_id : str

        context_package_ref : str

        idempotency_key : str

        timeout_seconds : int

        workflow_ref : str

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
        client.sessions.start_managed_sandbox_execution(
            project_id="project_id",
            session_id="session_id",
            context_package_ref="contextPackageRef",
            idempotency_key="idempotencyKey",
            timeout_seconds=1,
            workflow_ref="workflowRef",
        )
        """
        _response = self._raw_client.start_managed_sandbox_execution(
            project_id,
            session_id,
            context_package_ref=context_package_ref,
            idempotency_key=idempotency_key,
            timeout_seconds=timeout_seconds,
            workflow_ref=workflow_ref,
            request_options=request_options,
        )
        return _response.data


class AsyncSessionsClient:
    def __init__(self, *, client_wrapper: AsyncClientWrapper):
        self._raw_client = AsyncRawSessionsClient(client_wrapper=client_wrapper)

    @property
    def with_raw_response(self) -> AsyncRawSessionsClient:
        """
        Retrieves a raw implementation of this client that returns raw responses.

        Returns
        -------
        AsyncRawSessionsClient
        """
        return self._raw_client

    async def get_managed_session(
        self, project_id: str, session_id: str, *, request_options: typing.Optional[RequestOptions] = None
    ) -> typing.Dict[str, typing.Any]:
        """
        Parameters
        ----------
        project_id : str

        session_id : str

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
            await client.sessions.get_managed_session(
                project_id="project_id",
                session_id="session_id",
            )


        asyncio.run(main())
        """
        _response = await self._raw_client.get_managed_session(project_id, session_id, request_options=request_options)
        return _response.data

    async def list_managed_session_events(
        self,
        project_id: str,
        session_id: str,
        *,
        after: typing.Optional[str] = None,
        limit: typing.Optional[str] = None,
        request_options: typing.Optional[RequestOptions] = None,
    ) -> typing.Dict[str, typing.Any]:
        """
        Parameters
        ----------
        project_id : str

        session_id : str

        after : typing.Optional[str]

        limit : typing.Optional[str]

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
            await client.sessions.list_managed_session_events(
                project_id="project_id",
                session_id="session_id",
            )


        asyncio.run(main())
        """
        _response = await self._raw_client.list_managed_session_events(
            project_id, session_id, after=after, limit=limit, request_options=request_options
        )
        return _response.data

    async def list_managed_session_files(
        self, project_id: str, session_id: str, *, request_options: typing.Optional[RequestOptions] = None
    ) -> typing.Dict[str, typing.Any]:
        """
        Parameters
        ----------
        project_id : str

        session_id : str

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
            await client.sessions.list_managed_session_files(
                project_id="project_id",
                session_id="session_id",
            )


        asyncio.run(main())
        """
        _response = await self._raw_client.list_managed_session_files(
            project_id, session_id, request_options=request_options
        )
        return _response.data

    async def create_managed_interpreter(
        self,
        project_id: str,
        session_id: str,
        *,
        language: str,
        resource_limits: typing.Optional[typing.Dict[str, typing.Any]] = OMIT,
        request_options: typing.Optional[RequestOptions] = None,
    ) -> typing.Dict[str, typing.Any]:
        """
        Parameters
        ----------
        project_id : str

        session_id : str

        language : str

        resource_limits : typing.Optional[typing.Dict[str, typing.Any]]

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
            await client.sessions.create_managed_interpreter(
                project_id="project_id",
                session_id="session_id",
                language="language",
            )


        asyncio.run(main())
        """
        _response = await self._raw_client.create_managed_interpreter(
            project_id, session_id, language=language, resource_limits=resource_limits, request_options=request_options
        )
        return _response.data

    async def execute_managed_interpreter(
        self,
        project_id: str,
        session_id: str,
        interpreter_id: str,
        *,
        code: str,
        timeout_seconds: int,
        request_options: typing.Optional[RequestOptions] = None,
    ) -> typing.Dict[str, typing.Any]:
        """
        Parameters
        ----------
        project_id : str

        session_id : str

        interpreter_id : str

        code : str

        timeout_seconds : int

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
            await client.sessions.execute_managed_interpreter(
                project_id="project_id",
                session_id="session_id",
                interpreter_id="interpreter_id",
                code="code",
                timeout_seconds=1,
            )


        asyncio.run(main())
        """
        _response = await self._raw_client.execute_managed_interpreter(
            project_id,
            session_id,
            interpreter_id,
            code=code,
            timeout_seconds=timeout_seconds,
            request_options=request_options,
        )
        return _response.data

    async def list_managed_session_plan(
        self, project_id: str, session_id: str, *, request_options: typing.Optional[RequestOptions] = None
    ) -> typing.Dict[str, typing.Any]:
        """
        Parameters
        ----------
        project_id : str

        session_id : str

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
            await client.sessions.list_managed_session_plan(
                project_id="project_id",
                session_id="session_id",
            )


        asyncio.run(main())
        """
        _response = await self._raw_client.list_managed_session_plan(
            project_id, session_id, request_options=request_options
        )
        return _response.data

    async def start_managed_sandbox_execution(
        self,
        project_id: str,
        session_id: str,
        *,
        context_package_ref: str,
        idempotency_key: str,
        timeout_seconds: int,
        workflow_ref: str,
        request_options: typing.Optional[RequestOptions] = None,
    ) -> typing.Dict[str, typing.Any]:
        """
        Parameters
        ----------
        project_id : str

        session_id : str

        context_package_ref : str

        idempotency_key : str

        timeout_seconds : int

        workflow_ref : str

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
            await client.sessions.start_managed_sandbox_execution(
                project_id="project_id",
                session_id="session_id",
                context_package_ref="contextPackageRef",
                idempotency_key="idempotencyKey",
                timeout_seconds=1,
                workflow_ref="workflowRef",
            )


        asyncio.run(main())
        """
        _response = await self._raw_client.start_managed_sandbox_execution(
            project_id,
            session_id,
            context_package_ref=context_package_ref,
            idempotency_key=idempotency_key,
            timeout_seconds=timeout_seconds,
            workflow_ref=workflow_ref,
            request_options=request_options,
        )
        return _response.data
