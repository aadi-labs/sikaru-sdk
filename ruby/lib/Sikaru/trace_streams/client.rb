# frozen_string_literal: true

module Sikaru
  module TraceStreams
    class Client
      # @param client [Sikaru::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # @param request_options [Hash]
      # @param params [Sikaru::TraceStreams::Types::TraceStreamRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String, nil] :idempotency_key
      # @option params [String, nil] :sikaru_client_id
      #
      # @example
      #   client.trace_streams.stream_openinference_spans(
      #     format: "openinference.v1",
      #     metadata: {
      #       account_id: "account_id",
      #       project_id: "project_id",
      #       source: "source"
      #     }
      #   )
      #
      # @return [Hash[String, Object]]
      def stream_openinference_spans(request_options: {}, **params)
        params = Sikaru::Internal::Types::Utils.normalize_keys(params)
        request_data = Sikaru::TraceStreams::Types::TraceStreamRequest.new(params).to_h
        non_body_param_names = %w[Idempotency-Key X-Sikaru-Client-Id]
        body = request_data.except(*non_body_param_names)

        headers = {}
        headers["Idempotency-Key"] = params[:idempotency_key] if params[:idempotency_key]
        headers["X-Sikaru-Client-Id"] = params[:sikaru_client_id] if params[:sikaru_client_id]

        request = Sikaru::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/trace-streams",
          headers: headers,
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
