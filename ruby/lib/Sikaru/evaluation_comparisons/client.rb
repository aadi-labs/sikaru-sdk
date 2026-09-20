# frozen_string_literal: true

module Sikaru
  module EvaluationComparisons
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
      # @option params [String, nil] :after
      #
      # @example
      #   client.evaluation_comparisons.list_comparisons(project_id: "project_id")
      #
      # @return [Hash[String, Object]]
      def list_comparisons(request_options: {}, **params)
        params = Sikaru::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["after"] = params[:after] if params.key?(:after)

        request = Sikaru::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/projects/#{URI.encode_uri_component(params[:project_id].to_s)}/evaluation-comparisons",
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
      # @param params [Sikaru::EvaluationComparisons::Types::ComparisonInput]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :project_id
      #
      # @example
      #   client.evaluation_comparisons.create_comparison(
      #     project_id: "project_id",
      #     cases: [{
      #       baseline: {
      #         account_id: "accountId",
      #         conversation_id: "conversationId",
      #         message_id: "messageId"
      #       },
      #       candidate: {
      #         account_id: "accountId",
      #         conversation_id: "conversationId",
      #         message_id: "messageId"
      #       },
      #       case_id: "caseId"
      #     }],
      #     evaluator: "evaluator",
      #     id: "id",
      #     revision: "revision",
      #     rubric: "rubric"
      #   )
      #
      # @return [Hash[String, Object]]
      def create_comparison(request_options: {}, **params)
        params = Sikaru::Internal::Types::Utils.normalize_keys(params)
        request_data = Sikaru::EvaluationComparisons::Types::ComparisonInput.new(params).to_h
        non_body_param_names = %w[project_id]
        body = request_data.except(*non_body_param_names)

        request = Sikaru::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/projects/#{URI.encode_uri_component(params[:project_id].to_s)}/evaluation-comparisons",
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
      # @option params [String] :comparison_id
      #
      # @example
      #   client.evaluation_comparisons.get_comparison(
      #     project_id: "project_id",
      #     comparison_id: "comparison_id"
      #   )
      #
      # @return [Hash[String, Object]]
      def get_comparison(request_options: {}, **params)
        params = Sikaru::Internal::Types::Utils.normalize_keys(params)
        request = Sikaru::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/projects/#{URI.encode_uri_component(params[:project_id].to_s)}/evaluation-comparisons/#{URI.encode_uri_component(params[:comparison_id].to_s)}",
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
      # @option params [String] :comparison_id
      #
      # @example
      #   client.evaluation_comparisons.cancel_comparison(
      #     project_id: "project_id",
      #     comparison_id: "comparison_id"
      #   )
      #
      # @return [Hash[String, Object]]
      def cancel_comparison(request_options: {}, **params)
        params = Sikaru::Internal::Types::Utils.normalize_keys(params)
        request = Sikaru::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/projects/#{URI.encode_uri_component(params[:project_id].to_s)}/evaluation-comparisons/#{URI.encode_uri_component(params[:comparison_id].to_s)}/cancel",
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
