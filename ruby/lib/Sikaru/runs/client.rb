# frozen_string_literal: true

module Sikaru
  module Runs
    class Client
      # @param client [Sikaru::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # @param request_options [Hash]
      # @param params [Sikaru::Runs::Types::StartHarnessRunRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :project_id
      # @option params [String] :harness_id
      #
      # @example
      #   client.runs.start(
      #     project_id: "project_id",
      #     harness_id: "harness_id",
      #     input: {
      #       key: "value"
      #     },
      #     policy: {
      #       key: "value"
      #     },
      #     product_context: {
      #       key: "value"
      #     },
      #     tenant_id: "tenant_id",
      #     user_id: "user_id"
      #   )
      #
      # @return [Sikaru::Types::ManagedRun]
      def start(request_options: {}, **params)
        params = Sikaru::Internal::Types::Utils.normalize_keys(params)
        request_data = Sikaru::Runs::Types::StartHarnessRunRequest.new(params).to_h
        non_body_param_names = %w[project_id harness_id]
        body = request_data.except(*non_body_param_names)

        request = Sikaru::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/projects/#{URI.encode_uri_component(params[:project_id].to_s)}/harnesses/#{URI.encode_uri_component(params[:harness_id].to_s)}/runs",
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
          Sikaru::Types::ManagedRun.load(response.body)
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
      # @option params [String] :run_id
      #
      # @example
      #   client.runs.get(
      #     project_id: "project_id",
      #     run_id: "run_id"
      #   )
      #
      # @return [Sikaru::Types::ManagedRun]
      def get(request_options: {}, **params)
        params = Sikaru::Internal::Types::Utils.normalize_keys(params)
        request = Sikaru::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/projects/#{URI.encode_uri_component(params[:project_id].to_s)}/runs/#{URI.encode_uri_component(params[:run_id].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Sikaru::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Sikaru::Types::ManagedRun.load(response.body)
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
      # @option params [String] :run_id
      #
      # @example
      #   client.runs.pending_actions(
      #     project_id: "project_id",
      #     run_id: "run_id"
      #   )
      #
      # @return [Hash[String, Object]]
      def pending_actions(request_options: {}, **params)
        params = Sikaru::Internal::Types::Utils.normalize_keys(params)
        request = Sikaru::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/projects/#{URI.encode_uri_component(params[:project_id].to_s)}/runs/#{URI.encode_uri_component(params[:run_id].to_s)}/actions",
          request_options: request_options
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

      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :project_id
      # @option params [String] :run_id
      #
      # @example
      #   client.runs.cancel(
      #     project_id: "project_id",
      #     run_id: "run_id"
      #   )
      #
      # @return [Hash[String, Object]]
      def cancel(request_options: {}, **params)
        params = Sikaru::Internal::Types::Utils.normalize_keys(params)
        request = Sikaru::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/projects/#{URI.encode_uri_component(params[:project_id].to_s)}/runs/#{URI.encode_uri_component(params[:run_id].to_s)}/cancel",
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

      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :project_id
      # @option params [String] :run_id
      # @option params [String, nil] :after
      # @option params [String, nil] :limit
      # @option params [String, nil] :last_event_id
      #
      # @example
      #   client.runs.events(
      #     project_id: "project_id",
      #     run_id: "run_id"
      #   )
      #
      # @return [Sikaru::Types::RunEvents]
      def events(request_options: {}, **params)
        params = Sikaru::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["after"] = params[:after] if params.key?(:after)
        query_params["limit"] = params[:limit] if params.key?(:limit)

        headers = {}
        headers["Last-Event-ID"] = params[:last_event_id] if params[:last_event_id]

        request = Sikaru::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/projects/#{URI.encode_uri_component(params[:project_id].to_s)}/runs/#{URI.encode_uri_component(params[:run_id].to_s)}/events",
          headers: headers,
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
          Sikaru::Types::RunEvents.load(response.body)
        else
          error_class = Sikaru::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # @param request_options [Hash]
      # @param params [Sikaru::Types::RecoverRunRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :project_id
      # @option params [String] :run_id
      #
      # @example
      #   client.runs.recover(
      #     project_id: "project_id",
      #     run_id: "run_id"
      #   )
      #
      # @return [Hash[String, Object]]
      def recover(request_options: {}, **params)
        params = Sikaru::Internal::Types::Utils.normalize_keys(params)
        path_param_names = %i[project_id run_id]
        body_params = params.except(*path_param_names)

        request = Sikaru::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/projects/#{URI.encode_uri_component(params[:project_id].to_s)}/runs/#{URI.encode_uri_component(params[:run_id].to_s)}/recover",
          body: Sikaru::Types::RecoverRunRequest.new(body_params).to_h,
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

      # @param request_options [Hash]
      # @param params [Sikaru::Runs::Types::ApprovalInput]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :project_id
      # @option params [String] :run_id
      # @option params [String] :tool_call_id
      #
      # @example
      #   client.runs.decide_approval(
      #     project_id: "project_id",
      #     run_id: "run_id",
      #     tool_call_id: "tool_call_id",
      #     decision: "approved",
      #     idempotency_key: "idempotency_key"
      #   )
      #
      # @return [Hash[String, Object]]
      def decide_approval(request_options: {}, **params)
        params = Sikaru::Internal::Types::Utils.normalize_keys(params)
        request_data = Sikaru::Runs::Types::ApprovalInput.new(params).to_h
        non_body_param_names = %w[project_id run_id tool_call_id]
        body = request_data.except(*non_body_param_names)

        request = Sikaru::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/projects/#{URI.encode_uri_component(params[:project_id].to_s)}/runs/#{URI.encode_uri_component(params[:run_id].to_s)}/tool-calls/#{URI.encode_uri_component(params[:tool_call_id].to_s)}/approval",
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

      # @param request_options [Hash]
      # @param params [Sikaru::Runs::Types::SubmitToolResultRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :project_id
      # @option params [String] :run_id
      #
      # @example
      #   client.runs.submit_tool_result(
      #     project_id: "project_id",
      #     run_id: "run_id",
      #     capability_name: "capability_name",
      #     idempotency_key: "idempotency_key",
      #     payload: {
      #       key: "value"
      #     },
      #     status: "completed",
      #     tool_call_id: "tool_call_id",
      #     tool_provider_id: "tool_provider_id"
      #   )
      #
      # @return [Hash[String, Object]]
      def submit_tool_result(request_options: {}, **params)
        params = Sikaru::Internal::Types::Utils.normalize_keys(params)
        request_data = Sikaru::Runs::Types::SubmitToolResultRequest.new(params).to_h
        non_body_param_names = %w[project_id run_id]
        body = request_data.except(*non_body_param_names)

        request = Sikaru::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/projects/#{URI.encode_uri_component(params[:project_id].to_s)}/runs/#{URI.encode_uri_component(params[:run_id].to_s)}/tool-results",
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

      # Read retained ATIF structure and usage with private content redacted.
      #
      # This is a committed snapshot and can be partial while a run is active or
      # interrupted. Messages, reasoning, tool payloads and provider metadata are
      # omitted. No trajectory is synthesized when retained evidence is unavailable.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :project_id
      # @option params [String] :run_id
      #
      # @example
      #   client.runs.get_trajectory(
      #     project_id: "project_id",
      #     run_id: "run_id"
      #   )
      #
      # @return [Hash[String, Object]]
      def get_trajectory(request_options: {}, **params)
        params = Sikaru::Internal::Types::Utils.normalize_keys(params)
        request = Sikaru::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/projects/#{URI.encode_uri_component(params[:project_id].to_s)}/runs/#{URI.encode_uri_component(params[:run_id].to_s)}/trajectory",
          request_options: request_options
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
