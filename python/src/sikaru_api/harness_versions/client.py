
import typing

from ..core.client_wrapper import AsyncClientWrapper, SyncClientWrapper
from ..core.request_options import RequestOptions
from .raw_client import AsyncRawHarnessVersionsClient, RawHarnessVersionsClient
from .types.create_harness_version_request_status import CreateHarnessVersionRequestStatus

# this is used as the default value for optional parameters
OMIT = typing.cast(typing.Any, ...)


class HarnessVersionsClient:
    def __init__(self, *, client_wrapper: SyncClientWrapper):
        self._raw_client = RawHarnessVersionsClient(client_wrapper=client_wrapper)

    @property
    def with_raw_response(self) -> RawHarnessVersionsClient:
        """
        Retrieves a raw implementation of this client that returns raw responses.

        Returns
        -------
        RawHarnessVersionsClient
        """
        return self._raw_client

    def create_harness_version(
        self,
        project_id: str,
        *,
        base_harness_profile_id: str,
        compatibility_profile_id: str,
        display_name: str,
        harness_id: str,
        source_artifact_id: str,
        base_harness_version_id: typing.Optional[str] = OMIT,
        status: typing.Optional[CreateHarnessVersionRequestStatus] = OMIT,
        request_options: typing.Optional[RequestOptions] = None,
    ) -> typing.Dict[str, typing.Any]:
        """
        Parameters
        ----------
        project_id : str

        base_harness_profile_id : str

        compatibility_profile_id : str

        display_name : str

        harness_id : str

        source_artifact_id : str

        base_harness_version_id : typing.Optional[str]

        status : typing.Optional[CreateHarnessVersionRequestStatus]

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
        client.harness_versions.create_harness_version(
            project_id="project_id",
            base_harness_profile_id="baseHarnessProfileId",
            compatibility_profile_id="compatibilityProfileId",
            display_name="displayName",
            harness_id="harnessId",
            source_artifact_id="sourceArtifactId",
        )
        """
        _response = self._raw_client.create_harness_version(
            project_id,
            base_harness_profile_id=base_harness_profile_id,
            compatibility_profile_id=compatibility_profile_id,
            display_name=display_name,
            harness_id=harness_id,
            source_artifact_id=source_artifact_id,
            base_harness_version_id=base_harness_version_id,
            status=status,
            request_options=request_options,
        )
        return _response.data


class AsyncHarnessVersionsClient:
    def __init__(self, *, client_wrapper: AsyncClientWrapper):
        self._raw_client = AsyncRawHarnessVersionsClient(client_wrapper=client_wrapper)

    @property
    def with_raw_response(self) -> AsyncRawHarnessVersionsClient:
        """
        Retrieves a raw implementation of this client that returns raw responses.

        Returns
        -------
        AsyncRawHarnessVersionsClient
        """
        return self._raw_client

    async def create_harness_version(
        self,
        project_id: str,
        *,
        base_harness_profile_id: str,
        compatibility_profile_id: str,
        display_name: str,
        harness_id: str,
        source_artifact_id: str,
        base_harness_version_id: typing.Optional[str] = OMIT,
        status: typing.Optional[CreateHarnessVersionRequestStatus] = OMIT,
        request_options: typing.Optional[RequestOptions] = None,
    ) -> typing.Dict[str, typing.Any]:
        """
        Parameters
        ----------
        project_id : str

        base_harness_profile_id : str

        compatibility_profile_id : str

        display_name : str

        harness_id : str

        source_artifact_id : str

        base_harness_version_id : typing.Optional[str]

        status : typing.Optional[CreateHarnessVersionRequestStatus]

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
            await client.harness_versions.create_harness_version(
                project_id="project_id",
                base_harness_profile_id="baseHarnessProfileId",
                compatibility_profile_id="compatibilityProfileId",
                display_name="displayName",
                harness_id="harnessId",
                source_artifact_id="sourceArtifactId",
            )


        asyncio.run(main())
        """
        _response = await self._raw_client.create_harness_version(
            project_id,
            base_harness_profile_id=base_harness_profile_id,
            compatibility_profile_id=compatibility_profile_id,
            display_name=display_name,
            harness_id=harness_id,
            source_artifact_id=source_artifact_id,
            base_harness_version_id=base_harness_version_id,
            status=status,
            request_options=request_options,
        )
        return _response.data
