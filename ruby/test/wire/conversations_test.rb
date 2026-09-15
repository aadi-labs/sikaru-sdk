# frozen_string_literal: true

require_relative "wiremock_test_case"

class ConversationsWireTest < WireMockTestCase
  def setup
    super

    @client = Sikaru::Client.new(
      api_key: "<token>",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_conversations_list_messages_with_wiremock
    test_id = "conversations.list_messages.0"

    @client.conversations.list_messages(
      project_id: "project_id",
      conversation_id: "conversation_id",
      account_id: "account_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "conversations.list_messages.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v1/projects/project_id/conversations/conversation_id/messages",
      query_params: { "account_id" => "account_id" },
      expected: 1
    )
  end

  def test_conversations_record_message_with_wiremock
    test_id = "conversations.record_message.0"

    @client.conversations.record_message(
      project_id: "project_id",
      conversation_id: "conversation_id",
      account_id: "account_id",
      content: "content",
      delivered_at: "2024-01-15T09:30:00Z",
      message_id: "messageId",
      position: 1,
      role: "user",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "conversations.record_message.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/conversations/conversation_id/messages",
      query_params: { "account_id" => "account_id" },
      expected: 1
    )
  end
end
