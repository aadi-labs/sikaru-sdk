# frozen_string_literal: true

require_relative "wiremock_test_case"

class MemoryRegistryWireTest < WireMockTestCase
  def setup
    super

    @client = Sikaru::Client.new(
      token: "<token>",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_memory_registry_create_memory_registry_change_with_wiremock
    test_id = "memory_registry.create_memory_registry_change.0"

    @client.memory_registry.create_memory_registry_change(
      project_id: "project_id",
      memory_id: "memoryId",
      memory_type: "memoryType",
      name: "name",
      scope: "scope",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "memory_registry.create_memory_registry_change.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/memory-registry",
      query_params: nil,
      expected: 1
    )
  end
end
