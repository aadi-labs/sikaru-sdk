# frozen_string_literal: true

module Sikaru
  module ComputeOperations
    class Client
      # @param client [Sikaru::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Only exact immutable receipt retries are idempotent; changed content conflicts.
      #
      # @param request_options [Hash]
      # @param params [Sikaru::Types::ReceiptInput]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :project_id
      # @option params [String] :attachment_id
      #
      # @example
      #   client.compute_operations.submit_receipt(
      #     project_id: "project_id",
      #     attachment_id: "attachment_id",
      #     idempotency_key: "idempotency_key",
      #     payload: {
      #       key: "value"
      #     },
      #     request_digest: "request_digest",
      #     run_id: "run_id",
      #     status: "completed",
      #     tool_call_id: "tool_call_id",
      #     tool_provider_id: "tool_provider_id"
      #   )
      #
      # @return [Sikaru::Types::ReceiptView]
      def submit_receipt(request_options: {}, **params)
        params = Sikaru::Internal::Types::Utils.normalize_keys(params)
        path_param_names = %i[project_id attachment_id]
        body_params = params.except(*path_param_names)

        request = Sikaru::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/projects/#{URI.encode_uri_component(params[:project_id].to_s)}/compute-attachments/#{URI.encode_uri_component(params[:attachment_id].to_s)}/receipts",
          body: Sikaru::Types::ReceiptInput.new(body_params).to_h,
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
          (response.body.to_s.empty? ? nil : Sikaru::Types::ReceiptView.load(response.body))
        else
          error_class = Sikaru::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :project_id
      # @option params [String] :attachment_id
      # @option params [Integer, nil] :wait_seconds
      # @option params [Integer, nil] :limit
      #
      # @example
      #   client.compute_operations.poll(
      #     project_id: "project_id",
      #     attachment_id: "attachment_id"
      #   )
      #
      # @return [Sikaru::Types::WorkPage]
      def poll(request_options: {}, **params)
        params = Sikaru::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["wait_seconds"] = params[:wait_seconds] if params.key?(:wait_seconds)
        query_params["limit"] = params[:limit] if params.key?(:limit)

        request = Sikaru::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/projects/#{URI.encode_uri_component(params[:project_id].to_s)}/compute-attachments/#{URI.encode_uri_component(params[:attachment_id].to_s)}/work",
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
          (response.body.to_s.empty? ? nil : Sikaru::Types::WorkPage.load(response.body))
        else
          error_class = Sikaru::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
