# frozen_string_literal: true

module Sikaru
  module EvaluationResults
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
      # @option params [Sikaru::EvaluationResults::Types::ListResultsEvaluationResultsRequestEnvironment, nil] :environment
      # @option params [String, nil] :evaluator
      # @option params [Sikaru::EvaluationResults::Types::ListResultsEvaluationResultsRequestVerdict, nil] :verdict
      # @option params [Integer, nil] :limit
      # @option params [String, nil] :cursor
      #
      # @example
      #   client.evaluation_results.list_results(project_id: "project_id")
      #
      # @return [Hash[String, Object]]
      def list_results(request_options: {}, **params)
        params = Sikaru::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["environment"] = params[:environment] if params.key?(:environment)
        query_params["evaluator"] = params[:evaluator] if params.key?(:evaluator)
        query_params["verdict"] = params[:verdict] if params.key?(:verdict)
        query_params["limit"] = params[:limit] if params.key?(:limit)
        query_params["cursor"] = params[:cursor] if params.key?(:cursor)

        request = Sikaru::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/projects/#{URI.encode_uri_component(params[:project_id].to_s)}/evaluation-results",
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
      # @param params [Sikaru::EvaluationResults::Types::EvaluationResult]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :project_id
      #
      # @example
      #   client.evaluation_results.record_result(
      #     project_id: "project_id",
      #     environment: "production",
      #     evaluator: "evaluator",
      #     id: "id",
      #     public_reason: "publicReason",
      #     revision: "revision",
      #     source: "human",
      #     trace_id: "traceId",
      #     verdict: "pass"
      #   )
      #
      # @return [Hash[String, Object]]
      def record_result(request_options: {}, **params)
        params = Sikaru::Internal::Types::Utils.normalize_keys(params)
        request_data = Sikaru::EvaluationResults::Types::EvaluationResult.new(params).to_h
        non_body_param_names = %w[project_id]
        body = request_data.except(*non_body_param_names)

        request = Sikaru::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/projects/#{URI.encode_uri_component(params[:project_id].to_s)}/evaluation-results",
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
