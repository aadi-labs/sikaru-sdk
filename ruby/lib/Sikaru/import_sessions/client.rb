# frozen_string_literal: true

module Sikaru
  module ImportSessions
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
      #
      # @example
      #   client.import_sessions.list_import_sessions(project_id: "project_id")
      #
      # @return [Hash[String, Object]]
      def list_import_sessions(request_options: {}, **params)
        params = Sikaru::Internal::Types::Utils.normalize_keys(params)
        request = Sikaru::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/projects/#{URI.encode_uri_component(params[:project_id].to_s)}/import-sessions",
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
      # @param params [Sikaru::ImportSessions::Types::CreateImportSessionRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :project_id
      #
      # @example
      #   client.import_sessions.create_import_session(
      #     project_id: "project_id",
      #     display_name: "displayName",
      #     mode: "workflow"
      #   )
      #
      # @return [Hash[String, Object]]
      def create_import_session(request_options: {}, **params)
        params = Sikaru::Internal::Types::Utils.normalize_keys(params)
        request_data = Sikaru::ImportSessions::Types::CreateImportSessionRequest.new(params).to_h
        non_body_param_names = %w[project_id]
        body = request_data.except(*non_body_param_names)

        request = Sikaru::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/projects/#{URI.encode_uri_component(params[:project_id].to_s)}/import-sessions",
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
      # @option params [String] :import_session_id
      #
      # @example
      #   client.import_sessions.get_import_session(
      #     project_id: "project_id",
      #     import_session_id: "import_session_id"
      #   )
      #
      # @return [Hash[String, Object]]
      def get_import_session(request_options: {}, **params)
        params = Sikaru::Internal::Types::Utils.normalize_keys(params)
        request = Sikaru::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/projects/#{URI.encode_uri_component(params[:project_id].to_s)}/import-sessions/#{URI.encode_uri_component(params[:import_session_id].to_s)}",
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
      # @param params [Sikaru::ImportSessions::Types::CreateCompatibilityProfileRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :project_id
      # @option params [String] :import_session_id
      #
      # @example
      #   client.import_sessions.create_compatibility_profile(
      #     project_id: "project_id",
      #     import_session_id: "import_session_id",
      #     display_name: "displayName",
      #     harness_id: "harnessId"
      #   )
      #
      # @return [Hash[String, Object]]
      def create_compatibility_profile(request_options: {}, **params)
        params = Sikaru::Internal::Types::Utils.normalize_keys(params)
        request_data = Sikaru::ImportSessions::Types::CreateCompatibilityProfileRequest.new(params).to_h
        non_body_param_names = %w[project_id import_session_id]
        body = request_data.except(*non_body_param_names)

        request = Sikaru::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/projects/#{URI.encode_uri_component(params[:project_id].to_s)}/import-sessions/#{URI.encode_uri_component(params[:import_session_id].to_s)}/compatibility-profile",
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
      # @option params [String] :import_session_id
      #
      # @example
      #   client.import_sessions.list_import_session_diffs(
      #     project_id: "project_id",
      #     import_session_id: "import_session_id"
      #   )
      #
      # @return [Hash[String, Object]]
      def list_import_session_diffs(request_options: {}, **params)
        params = Sikaru::Internal::Types::Utils.normalize_keys(params)
        request = Sikaru::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/projects/#{URI.encode_uri_component(params[:project_id].to_s)}/import-sessions/#{URI.encode_uri_component(params[:import_session_id].to_s)}/diffs",
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
      # @option params [String] :import_session_id
      #
      # @example
      #   client.import_sessions.get_parity_report(
      #     project_id: "project_id",
      #     import_session_id: "import_session_id"
      #   )
      #
      # @return [Hash[String, Object]]
      def get_parity_report(request_options: {}, **params)
        params = Sikaru::Internal::Types::Utils.normalize_keys(params)
        request = Sikaru::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/projects/#{URI.encode_uri_component(params[:project_id].to_s)}/import-sessions/#{URI.encode_uri_component(params[:import_session_id].to_s)}/parity-report",
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
      # @param params [Sikaru::ImportSessions::Types::PromoteImportSessionRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :project_id
      # @option params [String] :import_session_id
      #
      # @example
      #   client.import_sessions.promote_import_session(
      #     project_id: "project_id",
      #     import_session_id: "import_session_id",
      #     active_harness_version_id: "activeHarnessVersionId",
      #     agent_slug: "agentSlug",
      #     compatibility_profile_id: "compatibilityProfileId",
      #     display_name: "displayName",
      #     harness_id: "harnessId"
      #   )
      #
      # @return [Hash[String, Object]]
      def promote_import_session(request_options: {}, **params)
        params = Sikaru::Internal::Types::Utils.normalize_keys(params)
        request_data = Sikaru::ImportSessions::Types::PromoteImportSessionRequest.new(params).to_h
        non_body_param_names = %w[project_id import_session_id]
        body = request_data.except(*non_body_param_names)

        request = Sikaru::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/projects/#{URI.encode_uri_component(params[:project_id].to_s)}/import-sessions/#{URI.encode_uri_component(params[:import_session_id].to_s)}/promote",
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
      # @param params [Sikaru::Types::CreateParityRunRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :project_id
      # @option params [String] :import_session_id
      #
      # @example
      #   client.import_sessions.create_replay_run(
      #     project_id: "project_id",
      #     import_session_id: "import_session_id",
      #     compatibility_profile_id: "compatibilityProfileId"
      #   )
      #
      # @return [Hash[String, Object]]
      def create_replay_run(request_options: {}, **params)
        params = Sikaru::Internal::Types::Utils.normalize_keys(params)
        path_param_names = %i[project_id import_session_id]
        body_params = params.except(*path_param_names)

        request = Sikaru::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/projects/#{URI.encode_uri_component(params[:project_id].to_s)}/import-sessions/#{URI.encode_uri_component(params[:import_session_id].to_s)}/replay-runs",
          body: Sikaru::Types::CreateParityRunRequest.new(body_params).to_h,
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
      # @option params [String] :import_session_id
      #
      # @example
      #   client.import_sessions.list_source_artifacts(
      #     project_id: "project_id",
      #     import_session_id: "import_session_id"
      #   )
      #
      # @return [Hash[String, Object]]
      def list_source_artifacts(request_options: {}, **params)
        params = Sikaru::Internal::Types::Utils.normalize_keys(params)
        request = Sikaru::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/projects/#{URI.encode_uri_component(params[:project_id].to_s)}/import-sessions/#{URI.encode_uri_component(params[:import_session_id].to_s)}/source-artifacts",
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
      # @param params [Sikaru::ImportSessions::Types::CreateSourceArtifactRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :project_id
      # @option params [String] :import_session_id
      #
      # @example
      #   client.import_sessions.create_source_artifact(
      #     project_id: "project_id",
      #     import_session_id: "import_session_id",
      #     content_digest: "contentDigest",
      #     export_policy: "customer_source_exportable",
      #     source_kind: "workflow_json",
      #     storage_ref: "storageRef"
      #   )
      #
      # @return [Hash[String, Object]]
      def create_source_artifact(request_options: {}, **params)
        params = Sikaru::Internal::Types::Utils.normalize_keys(params)
        request_data = Sikaru::ImportSessions::Types::CreateSourceArtifactRequest.new(params).to_h
        non_body_param_names = %w[project_id import_session_id]
        body = request_data.except(*non_body_param_names)

        request = Sikaru::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/projects/#{URI.encode_uri_component(params[:project_id].to_s)}/import-sessions/#{URI.encode_uri_component(params[:import_session_id].to_s)}/source-artifacts",
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
      # @param params [Sikaru::Types::CreateParityRunRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :project_id
      # @option params [String] :import_session_id
      #
      # @example
      #   client.import_sessions.create_staging_run(
      #     project_id: "project_id",
      #     import_session_id: "import_session_id",
      #     compatibility_profile_id: "compatibilityProfileId"
      #   )
      #
      # @return [Hash[String, Object]]
      def create_staging_run(request_options: {}, **params)
        params = Sikaru::Internal::Types::Utils.normalize_keys(params)
        path_param_names = %i[project_id import_session_id]
        body_params = params.except(*path_param_names)

        request = Sikaru::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/projects/#{URI.encode_uri_component(params[:project_id].to_s)}/import-sessions/#{URI.encode_uri_component(params[:import_session_id].to_s)}/staging-runs",
          body: Sikaru::Types::CreateParityRunRequest.new(body_params).to_h,
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
