# frozen_string_literal: true

module Sikaru
  module Specialists
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
      # @option params [String] :session_id
      #
      # @example
      #   client.specialists.list(
      #     project_id: "project_id",
      #     session_id: "session_id"
      #   )
      #
      # @return [Sikaru::Types::SpecialistThreads]
      def list(request_options: {}, **params)
        params = Sikaru::Internal::Types::Utils.normalize_keys(params)
        request = Sikaru::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/projects/#{URI.encode_uri_component(params[:project_id].to_s)}/execution-sessions/#{URI.encode_uri_component(params[:session_id].to_s)}/specialists",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Sikaru::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Sikaru::Types::SpecialistThreads.load(response.body)
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
      # @option params [String] :session_id
      # @option params [String] :thread_id
      #
      # @example
      #   client.specialists.get(
      #     project_id: "project_id",
      #     session_id: "session_id",
      #     thread_id: "thread_id"
      #   )
      #
      # @return [Sikaru::Types::SpecialistThread]
      def get(request_options: {}, **params)
        params = Sikaru::Internal::Types::Utils.normalize_keys(params)
        request = Sikaru::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/projects/#{URI.encode_uri_component(params[:project_id].to_s)}/execution-sessions/#{URI.encode_uri_component(params[:session_id].to_s)}/specialists/#{URI.encode_uri_component(params[:thread_id].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Sikaru::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Sikaru::Types::SpecialistThread.load(response.body)
        else
          error_class = Sikaru::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # @param request_options [Hash]
      # @param params [Sikaru::Specialists::Types::SpecialistCancel]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :project_id
      # @option params [String] :session_id
      # @option params [String] :thread_id
      #
      # @example
      #   client.specialists.cancel(
      #     project_id: "project_id",
      #     session_id: "session_id",
      #     thread_id: "thread_id",
      #     idempotency_key: "idempotency_key"
      #   )
      #
      # @return [Sikaru::Types::SpecialistReceipt]
      def cancel(request_options: {}, **params)
        params = Sikaru::Internal::Types::Utils.normalize_keys(params)
        request_data = Sikaru::Specialists::Types::SpecialistCancel.new(params).to_h
        non_body_param_names = %w[project_id session_id thread_id]
        body = request_data.except(*non_body_param_names)

        request = Sikaru::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/projects/#{URI.encode_uri_component(params[:project_id].to_s)}/execution-sessions/#{URI.encode_uri_component(params[:session_id].to_s)}/specialists/#{URI.encode_uri_component(params[:thread_id].to_s)}/cancel",
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
          Sikaru::Types::SpecialistReceipt.load(response.body)
        else
          error_class = Sikaru::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # @param request_options [Hash]
      # @param params [Sikaru::Specialists::Types::SpecialistMessage]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :project_id
      # @option params [String] :session_id
      # @option params [String] :thread_id
      #
      # @example
      #   client.specialists.message(
      #     project_id: "project_id",
      #     session_id: "session_id",
      #     thread_id: "thread_id",
      #     idempotency_key: "idempotency_key",
      #     input: {
      #       key: "value"
      #     }
      #   )
      #
      # @return [Sikaru::Types::SpecialistReceipt]
      def message(request_options: {}, **params)
        params = Sikaru::Internal::Types::Utils.normalize_keys(params)
        request_data = Sikaru::Specialists::Types::SpecialistMessage.new(params).to_h
        non_body_param_names = %w[project_id session_id thread_id]
        body = request_data.except(*non_body_param_names)

        request = Sikaru::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/projects/#{URI.encode_uri_component(params[:project_id].to_s)}/execution-sessions/#{URI.encode_uri_component(params[:session_id].to_s)}/specialists/#{URI.encode_uri_component(params[:thread_id].to_s)}/messages",
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
          Sikaru::Types::SpecialistReceipt.load(response.body)
        else
          error_class = Sikaru::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
