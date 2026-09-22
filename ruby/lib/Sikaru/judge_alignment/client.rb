# frozen_string_literal: true

module Sikaru
  module JudgeAlignment
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
      # @option params [String] :evaluator
      # @option params [String] :revision
      # @option params [Sikaru::JudgeAlignment::Types::GetJudgeAlignmentJudgeAlignmentRequestEnvironment, nil] :environment
      #
      # @example
      #   client.judge_alignment.get_judge_alignment(
      #     project_id: "project_id",
      #     evaluator: "evaluator",
      #     revision: "revision"
      #   )
      #
      # @return [Hash[String, Object]]
      def get_judge_alignment(request_options: {}, **params)
        params = Sikaru::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["evaluator"] = params[:evaluator] if params.key?(:evaluator)
        query_params["revision"] = params[:revision] if params.key?(:revision)
        query_params["environment"] = params[:environment] if params.key?(:environment)

        request = Sikaru::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/projects/#{URI.encode_uri_component(params[:project_id].to_s)}/judge-alignment",
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
    end
  end
end
