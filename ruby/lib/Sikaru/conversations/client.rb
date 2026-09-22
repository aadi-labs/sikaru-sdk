# frozen_string_literal: true

module Sikaru
  module Conversations
    class Client
      # @param client [Sikaru::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :project_id
      # @option params [String] :conversation_id
      # @option params [String] :account_id
      # @option params [Integer, nil] :limit
      # @option params [String, nil] :cursor
      #
      # @example
      #   client.conversations.list_messages(
      #     project_id: "project_id",
      #     conversation_id: "conversation_id",
      #     account_id: "account_id"
      #   )
      #
      # @return [Hash[String, Object]]
      def list_messages(request_options: {}, **params)
        params = Sikaru::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["account_id"] = params[:account_id] if params.key?(:account_id)
        query_params["limit"] = params[:limit] if params.key?(:limit)
        query_params["cursor"] = params[:cursor] if params.key?(:cursor)

        request = Sikaru::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/projects/#{URI.encode_uri_component(params[:project_id].to_s)}/conversations/#{URI.encode_uri_component(params[:conversation_id].to_s)}/messages",
          query: query_params,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Sikaru::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Sikaru::Internal::Types::Utils.coerce(Internal::Types::Hash[String, Object], (response.body.to_s.empty? ? nil : JSON.parse(response.body, symbolize_names: true)))
        else
          error_class = Sikaru::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # @param request_options [Hash]
      # @param params [Sikaru::Conversations::Types::DeliveredMessage]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :project_id
      # @option params [String] :conversation_id
      # @option params [String] :account_id
      #
      # @example
      #   client.conversations.record_message(
      #     project_id: "project_id",
      #     conversation_id: "conversation_id",
      #     account_id: "account_id",
      #     content: "content",
      #     delivered_at: "2024-01-15T09:30:00Z",
      #     message_id: "messageId",
      #     position: 1,
      #     role: "user"
      #   )
      #
      # @return [Hash[String, Object]]
      def record_message(request_options: {}, **params)
        params = Sikaru::Internal::Types::Utils.normalize_keys(params)
        request_data = Sikaru::Conversations::Types::DeliveredMessage.new(params).to_h
        non_body_param_names = %w[project_id conversation_id account_id]
        body = request_data.except(*non_body_param_names)

        query_params = {}
        query_params["account_id"] = params[:account_id] if params.key?(:account_id)

        request = Sikaru::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/projects/#{URI.encode_uri_component(params[:project_id].to_s)}/conversations/#{URI.encode_uri_component(params[:conversation_id].to_s)}/messages",
          query: query_params,
          body: body,
          request_options: request_options,
          max_retries: 0
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Sikaru::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Sikaru::Internal::Types::Utils.coerce(Internal::Types::Hash[String, Object], (response.body.to_s.empty? ? nil : JSON.parse(response.body, symbolize_names: true)))
        else
          error_class = Sikaru::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
