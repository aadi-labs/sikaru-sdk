# frozen_string_literal: true

module Sikaru
  module ToolProviders
    class Client
      # @param client [Sikaru::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # @param request_options [Hash]
      # @param params [Sikaru::ToolProviders::Types::RegisterToolProviderRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :project_id
      #
      # @example
      #   client.tool_providers.register_tool_provider(
      #     project_id: "project_id",
      #     broker_endpoint_ref: "broker_endpoint_ref",
      #     capability_prefix: "capability_prefix",
      #     display_name: "display_name",
      #     provider_type: "provider_type",
      #     tool_catalog_ref: "tool_catalog_ref"
      #   )
      #
      # @return [Hash[String, Object]]
      def register_tool_provider(request_options: {}, **params)
        params = Sikaru::Internal::Types::Utils.normalize_keys(params)
        request_data = Sikaru::ToolProviders::Types::RegisterToolProviderRequest.new(params).to_h
        non_body_param_names = %w[project_id]
        body = request_data.except(*non_body_param_names)

        request = Sikaru::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/projects/#{URI.encode_uri_component(params[:project_id].to_s)}/tool-providers",
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
      # @param params [Sikaru::ToolProviders::Types::AttachSourceToolSkillRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :project_id
      # @option params [String] :tool_provider_id
      #
      # @example
      #   client.tool_providers.attach_source_tool_skill(
      #     project_id: "project_id",
      #     tool_provider_id: "tool_provider_id",
      #     capability_refs: ["capability_refs"],
      #     description: "description",
      #     source: {
      #       kind: "kind"
      #     }
      #   )
      #
      # @return [Hash[String, Object]]
      def attach_source_tool_skill(request_options: {}, **params)
        params = Sikaru::Internal::Types::Utils.normalize_keys(params)
        request_data = Sikaru::ToolProviders::Types::AttachSourceToolSkillRequest.new(params).to_h
        non_body_param_names = %w[project_id tool_provider_id]
        body = request_data.except(*non_body_param_names)

        request = Sikaru::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/projects/#{URI.encode_uri_component(params[:project_id].to_s)}/tool-providers/#{URI.encode_uri_component(params[:tool_provider_id].to_s)}/skills",
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
