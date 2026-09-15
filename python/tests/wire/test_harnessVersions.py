from .conftest import get_client, verify_request_count


def test_harnessVersions_create_harness_version() -> None:
    """Test create_harness_version endpoint with WireMock"""
    test_id = "harness_versions.create_harness_version.0"
    client = get_client(test_id)
    client.harness_versions.create_harness_version(
        project_id="project_id",
        base_harness_profile_id="baseHarnessProfileId",
        compatibility_profile_id="compatibilityProfileId",
        display_name="displayName",
        harness_id="harnessId",
        source_artifact_id="sourceArtifactId",
    )
    verify_request_count(test_id, "POST", "/v1/projects/project_id/harness-versions", None, 1)
