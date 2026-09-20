# frozen_string_literal: true

module Sikaru
  module Changesets
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
      # @option params [Sikaru::Changesets::Types::ListChangesetsChangesetsRequestStatus, nil] :status
      #
      # @example
      #   client.changesets.list_changesets(project_id: "project_id")
      #
      # @return [Hash[String, Object]]
      def list_changesets(request_options: {}, **params)
        params = Sikaru::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["status"] = params[:status] if params.key?(:status)

        request = Sikaru::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/projects/#{URI.encode_uri_component(params[:project_id].to_s)}/changesets",
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
      # @param params [Sikaru::Changesets::Types::CreateChangeSetRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :project_id
      #
      # @example
      #   client.changesets.create_changeset(
      #     project_id: "project_id",
      #     public_summary: "publicSummary",
      #     public_title: "publicTitle",
      #     scope_ref: "scopeRef",
      #     scope_type: "global",
      #     source_type: "import"
      #   )
      #
      # @return [Hash[String, Object]]
      def create_changeset(request_options: {}, **params)
        params = Sikaru::Internal::Types::Utils.normalize_keys(params)
        request_data = Sikaru::Changesets::Types::CreateChangeSetRequest.new(params).to_h
        non_body_param_names = %w[project_id]
        body = request_data.except(*non_body_param_names)

        request = Sikaru::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/projects/#{URI.encode_uri_component(params[:project_id].to_s)}/changesets",
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
      # @option params [String] :changeset_id
      #
      # @example
      #   client.changesets.get_changeset(
      #     project_id: "project_id",
      #     changeset_id: "changeset_id"
      #   )
      #
      # @return [Hash[String, Object]]
      def get_changeset(request_options: {}, **params)
        params = Sikaru::Internal::Types::Utils.normalize_keys(params)
        request = Sikaru::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/projects/#{URI.encode_uri_component(params[:project_id].to_s)}/changesets/#{URI.encode_uri_component(params[:changeset_id].to_s)}",
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
      # @option params [String] :changeset_id
      #
      # @example
      #   client.changesets.approve_changeset(
      #     project_id: "project_id",
      #     changeset_id: "changeset_id",
      #     request: {}
      #   )
      #
      # @return [Hash[String, Object]]
      def approve_changeset(request_options: {}, **params)
        params = Sikaru::Internal::Types::Utils.normalize_keys(params)
        path_param_names = %i[project_id changeset_id]
        body_params = params.except(*path_param_names)

        request = Sikaru::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/projects/#{URI.encode_uri_component(params[:project_id].to_s)}/changesets/#{URI.encode_uri_component(params[:changeset_id].to_s)}/approve",
          body: body_params,
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
      # @option params [String] :changeset_id
      #
      # @example
      #   client.changesets.list_changeset_diffs(
      #     project_id: "project_id",
      #     changeset_id: "changeset_id"
      #   )
      #
      # @return [Hash[String, Object]]
      def list_changeset_diffs(request_options: {}, **params)
        params = Sikaru::Internal::Types::Utils.normalize_keys(params)
        request = Sikaru::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/projects/#{URI.encode_uri_component(params[:project_id].to_s)}/changesets/#{URI.encode_uri_component(params[:changeset_id].to_s)}/diffs",
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
      # @option params [String] :changeset_id
      #
      # @example
      #   client.changesets.list_changeset_evidence(
      #     project_id: "project_id",
      #     changeset_id: "changeset_id"
      #   )
      #
      # @return [Hash[String, Object]]
      def list_changeset_evidence(request_options: {}, **params)
        params = Sikaru::Internal::Types::Utils.normalize_keys(params)
        request = Sikaru::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/projects/#{URI.encode_uri_component(params[:project_id].to_s)}/changesets/#{URI.encode_uri_component(params[:changeset_id].to_s)}/evidence",
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
      # @option params [String] :changeset_id
      #
      # @example
      #   client.changesets.promote_changeset(
      #     project_id: "project_id",
      #     changeset_id: "changeset_id",
      #     request: {}
      #   )
      #
      # @return [Hash[String, Object]]
      def promote_changeset(request_options: {}, **params)
        params = Sikaru::Internal::Types::Utils.normalize_keys(params)
        path_param_names = %i[project_id changeset_id]
        body_params = params.except(*path_param_names)

        request = Sikaru::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/projects/#{URI.encode_uri_component(params[:project_id].to_s)}/changesets/#{URI.encode_uri_component(params[:changeset_id].to_s)}/promote",
          body: body_params,
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
      # @option params [String] :changeset_id
      #
      # @example
      #   client.changesets.reject_changeset(
      #     project_id: "project_id",
      #     changeset_id: "changeset_id",
      #     request: {}
      #   )
      #
      # @return [Hash[String, Object]]
      def reject_changeset(request_options: {}, **params)
        params = Sikaru::Internal::Types::Utils.normalize_keys(params)
        path_param_names = %i[project_id changeset_id]
        body_params = params.except(*path_param_names)

        request = Sikaru::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/projects/#{URI.encode_uri_component(params[:project_id].to_s)}/changesets/#{URI.encode_uri_component(params[:changeset_id].to_s)}/reject",
          body: body_params,
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
      # @option params [String] :changeset_id
      #
      # @example
      #   client.changesets.rollback_changeset(
      #     project_id: "project_id",
      #     changeset_id: "changeset_id",
      #     request: {}
      #   )
      #
      # @return [Hash[String, Object]]
      def rollback_changeset(request_options: {}, **params)
        params = Sikaru::Internal::Types::Utils.normalize_keys(params)
        path_param_names = %i[project_id changeset_id]
        body_params = params.except(*path_param_names)

        request = Sikaru::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/projects/#{URI.encode_uri_component(params[:project_id].to_s)}/changesets/#{URI.encode_uri_component(params[:changeset_id].to_s)}/rollback",
          body: body_params,
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
      # @option params [String] :changeset_id
      #
      # @example
      #   client.changesets.stage_changeset(
      #     project_id: "project_id",
      #     changeset_id: "changeset_id",
      #     request: {}
      #   )
      #
      # @return [Hash[String, Object]]
      def stage_changeset(request_options: {}, **params)
        params = Sikaru::Internal::Types::Utils.normalize_keys(params)
        path_param_names = %i[project_id changeset_id]
        body_params = params.except(*path_param_names)

        request = Sikaru::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/projects/#{URI.encode_uri_component(params[:project_id].to_s)}/changesets/#{URI.encode_uri_component(params[:changeset_id].to_s)}/stage",
          body: body_params,
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
