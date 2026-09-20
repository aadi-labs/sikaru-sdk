# frozen_string_literal: true

module Sikaru
  module RunSchedules
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
      # @option params [String, nil] :session_id
      #
      # @example
      #   client.run_schedules.list_schedules(project_id: "project_id")
      #
      # @return [Hash[String, Object]]
      def list_schedules(request_options: {}, **params)
        params = Sikaru::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["session_id"] = params[:session_id] if params.key?(:session_id)

        request = Sikaru::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/projects/#{URI.encode_uri_component(params[:project_id].to_s)}/run-schedules",
          query: query_params,
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
      # @param params [Sikaru::RunSchedules::Types::ScheduleInput]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :project_id
      #
      # @example
      #   client.run_schedules.create_schedule(
      #     project_id: "project_id",
      #     input: {
      #       key: "value"
      #     },
      #     session_id: "session_id"
      #   )
      #
      # @return [Hash[String, Object]]
      def create_schedule(request_options: {}, **params)
        params = Sikaru::Internal::Types::Utils.normalize_keys(params)
        request_data = Sikaru::RunSchedules::Types::ScheduleInput.new(params).to_h
        non_body_param_names = %w[project_id]
        body = request_data.except(*non_body_param_names)

        request = Sikaru::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/projects/#{URI.encode_uri_component(params[:project_id].to_s)}/run-schedules",
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
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :project_id
      # @option params [String] :schedule_id
      #
      # @example
      #   client.run_schedules.delete_schedule(
      #     project_id: "project_id",
      #     schedule_id: "schedule_id"
      #   )
      #
      # @return [Hash[String, Object]]
      def delete_schedule(request_options: {}, **params)
        params = Sikaru::Internal::Types::Utils.normalize_keys(params)
        request = Sikaru::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "v1/projects/#{URI.encode_uri_component(params[:project_id].to_s)}/run-schedules/#{URI.encode_uri_component(params[:schedule_id].to_s)}",
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
      # @param params [Sikaru::RunSchedules::Types::PauseInput]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :project_id
      # @option params [String] :schedule_id
      #
      # @example
      #   client.run_schedules.pause_schedule(
      #     project_id: "project_id",
      #     schedule_id: "schedule_id",
      #     paused: true
      #   )
      #
      # @return [Hash[String, Object]]
      def pause_schedule(request_options: {}, **params)
        params = Sikaru::Internal::Types::Utils.normalize_keys(params)
        request_data = Sikaru::RunSchedules::Types::PauseInput.new(params).to_h
        non_body_param_names = %w[project_id schedule_id]
        body = request_data.except(*non_body_param_names)

        request = Sikaru::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PATCH",
          path: "v1/projects/#{URI.encode_uri_component(params[:project_id].to_s)}/run-schedules/#{URI.encode_uri_component(params[:schedule_id].to_s)}",
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
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :project_id
      # @option params [String] :schedule_id
      # @option params [Integer, nil] :before
      # @option params [Integer, nil] :limit
      #
      # @example
      #   client.run_schedules.schedule_history(
      #     project_id: "project_id",
      #     schedule_id: "schedule_id"
      #   )
      #
      # @return [Hash[String, Object]]
      def schedule_history(request_options: {}, **params)
        params = Sikaru::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["before"] = params[:before] if params.key?(:before)
        query_params["limit"] = params[:limit] if params.key?(:limit)

        request = Sikaru::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/projects/#{URI.encode_uri_component(params[:project_id].to_s)}/run-schedules/#{URI.encode_uri_component(params[:schedule_id].to_s)}/occurrences",
          query: query_params,
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
