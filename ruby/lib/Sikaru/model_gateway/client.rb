# frozen_string_literal: true

module Sikaru
  module ModelGateway
    class Client
      # @param client [Sikaru::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # @param request_options [Hash]
      # @param params [Sikaru::ModelGateway::Types::ModelGatewayCaptureRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :project_id
      # @option params [String] :provider
      #
      # @example
      #   client.model_gateway.capture_model_gateway_chat_completion(
      #     project_id: "project_id",
      #     provider: "provider",
      #     request: {
      #       key: "value"
      #     }
      #   )
      #
      # @return [Hash[String, Object]]
      def capture_model_gateway_chat_completion(request_options: {}, **params)
        params = Sikaru::Internal::Types::Utils.normalize_keys(params)
        request_data = Sikaru::ModelGateway::Types::ModelGatewayCaptureRequest.new(params).to_h
        non_body_param_names = %w[project_id provider]
        body = request_data.except(*non_body_param_names)

        request = Sikaru::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/projects/#{URI.encode_uri_component(params[:project_id].to_s)}/model-gateway/#{URI.encode_uri_component(params[:provider].to_s)}/chat/completions/capture",
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
        return if code.between?(200, 299)

        error_class = Sikaru::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
      end
    end
  end
end
