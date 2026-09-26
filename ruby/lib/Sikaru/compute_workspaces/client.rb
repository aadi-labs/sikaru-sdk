# frozen_string_literal: true

module Sikaru
  module ComputeWorkspaces
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
      # @option params [String] :attachment_id
      # @option params [String] :run_id
      #
      # @example
      #   client.compute_workspaces.get(
      #     project_id: "project_id",
      #     attachment_id: "attachment_id",
      #     run_id: "run_id"
      #   )
      #
      # @return [Sikaru::Types::WorkspaceCheckpointView]
      def get(request_options: {}, **params)
        params = Sikaru::Internal::Types::Utils.normalize_keys(params)
        request = Sikaru::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/projects/#{URI.encode_uri_component(params[:project_id].to_s)}/compute-attachments/#{URI.encode_uri_component(params[:attachment_id].to_s)}/workspace-checkpoints/#{URI.encode_uri_component(params[:run_id].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Sikaru::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : Sikaru::Types::WorkspaceCheckpointView.load(response.body))
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
      # @option params [String] :run_id
      # @option params [String] :sha256
      #
      # @return [Sikaru::Types::WorkspaceBlobView]
      def put_blob(request_options: {}, **params)
        params = Sikaru::Internal::Types::Utils.normalize_keys(params)
        request = Sikaru::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PUT",
          path: "v1/projects/#{URI.encode_uri_component(params[:project_id].to_s)}/compute-attachments/#{URI.encode_uri_component(params[:attachment_id].to_s)}/workspace-checkpoints/#{URI.encode_uri_component(params[:run_id].to_s)}/blobs/#{URI.encode_uri_component(params[:sha256].to_s)}",
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
          (response.body.to_s.empty? ? nil : Sikaru::Types::WorkspaceBlobView.load(response.body))
        else
          error_class = Sikaru::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # @param request_options [Hash]
      # @param params [Sikaru::ComputeWorkspaces::Types::WorkspaceTreeInput]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :project_id
      # @option params [String] :attachment_id
      # @option params [String] :run_id
      #
      # @example
      #   client.compute_workspaces.commit_tree(
      #     project_id: "project_id",
      #     attachment_id: "attachment_id",
      #     run_id: "run_id",
      #     files: {
      #       key: {
      #         chunks: [{
      #           sha256: "sha256",
      #           size: 1
      #         }],
      #         mode: 1,
      #         sha256: "sha256",
      #         size: 1
      #       }
      #     }
      #   )
      #
      # @return [Sikaru::Types::WorkspaceCheckpointView]
      def commit_tree(request_options: {}, **params)
        params = Sikaru::Internal::Types::Utils.normalize_keys(params)
        request_data = Sikaru::ComputeWorkspaces::Types::WorkspaceTreeInput.new(params).to_h
        non_body_param_names = %w[project_id attachment_id run_id]
        body = request_data.except(*non_body_param_names)

        request = Sikaru::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/projects/#{URI.encode_uri_component(params[:project_id].to_s)}/compute-attachments/#{URI.encode_uri_component(params[:attachment_id].to_s)}/workspace-checkpoints/#{URI.encode_uri_component(params[:run_id].to_s)}/tree",
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
          (response.body.to_s.empty? ? nil : Sikaru::Types::WorkspaceCheckpointView.load(response.body))
        else
          error_class = Sikaru::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
