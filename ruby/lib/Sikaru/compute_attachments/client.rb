# frozen_string_literal: true

module Sikaru
  module ComputeAttachments
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
      #
      # @example
      #   client.compute_attachments.get(
      #     project_id: "project_id",
      #     attachment_id: "attachment_id"
      #   )
      #
      # @return [Sikaru::Types::AttachmentView]
      def get(request_options: {}, **params)
        params = Sikaru::Internal::Types::Utils.normalize_keys(params)
        request = Sikaru::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/projects/#{URI.encode_uri_component(params[:project_id].to_s)}/compute-attachments/#{URI.encode_uri_component(params[:attachment_id].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Sikaru::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : Sikaru::Types::AttachmentView.load(response.body))
        else
          error_class = Sikaru::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Irreversibly abandon execution authority, preserving unknown effects. Cleanup is still required.
      #
      # @param request_options [Hash]
      # @param params [Sikaru::ComputeAttachments::Types::AbandonInput]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :project_id
      # @option params [String] :attachment_id
      #
      # @example
      #   client.compute_attachments.abandon(
      #     project_id: "project_id",
      #     attachment_id: "attachment_id",
      #     evidence: "evidence"
      #   )
      #
      # @return [Sikaru::Types::AttachmentView]
      def abandon(request_options: {}, **params)
        params = Sikaru::Internal::Types::Utils.normalize_keys(params)
        request_data = Sikaru::ComputeAttachments::Types::AbandonInput.new(params).to_h
        non_body_param_names = %w[project_id attachment_id]
        body = request_data.except(*non_body_param_names)

        request = Sikaru::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/projects/#{URI.encode_uri_component(params[:project_id].to_s)}/compute-attachments/#{URI.encode_uri_component(params[:attachment_id].to_s)}/abandon",
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
          (response.body.to_s.empty? ? nil : Sikaru::Types::AttachmentView.load(response.body))
        else
          error_class = Sikaru::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Idempotently request stopping. This never asserts child cleanup.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :project_id
      # @option params [String] :attachment_id
      #
      # @example
      #   client.compute_attachments.cancel(
      #     project_id: "project_id",
      #     attachment_id: "attachment_id"
      #   )
      #
      # @return [Sikaru::Types::AttachmentView]
      def cancel(request_options: {}, **params)
        params = Sikaru::Internal::Types::Utils.normalize_keys(params)
        request = Sikaru::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/projects/#{URI.encode_uri_component(params[:project_id].to_s)}/compute-attachments/#{URI.encode_uri_component(params[:attachment_id].to_s)}/cancel",
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
          (response.body.to_s.empty? ? nil : Sikaru::Types::AttachmentView.load(response.body))
        else
          error_class = Sikaru::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Same attachment/key/worker returns the same launch identity, never another launch.
      #
      # @param request_options [Hash]
      # @param params [Sikaru::ComputeAttachments::Types::ClaimInput]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :project_id
      # @option params [String] :attachment_id
      #
      # @example
      #   client.compute_attachments.claim(
      #     project_id: "project_id",
      #     attachment_id: "attachment_id",
      #     idempotency_key: "idempotency_key"
      #   )
      #
      # @return [Sikaru::Types::ClaimView]
      def claim(request_options: {}, **params)
        params = Sikaru::Internal::Types::Utils.normalize_keys(params)
        request_data = Sikaru::ComputeAttachments::Types::ClaimInput.new(params).to_h
        non_body_param_names = %w[project_id attachment_id]
        body = request_data.except(*non_body_param_names)

        request = Sikaru::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/projects/#{URI.encode_uri_component(params[:project_id].to_s)}/compute-attachments/#{URI.encode_uri_component(params[:attachment_id].to_s)}/claim",
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
          (response.body.to_s.empty? ? nil : Sikaru::Types::ClaimView.load(response.body))
        else
          error_class = Sikaru::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # @param request_options [Hash]
      # @param params [Sikaru::ComputeAttachments::Types::CleanupInput]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :project_id
      # @option params [String] :attachment_id
      #
      # @example
      #   client.compute_attachments.cleanup(
      #     project_id: "project_id",
      #     attachment_id: "attachment_id",
      #     children_terminated: true,
      #     evidence: "evidence"
      #   )
      #
      # @return [Sikaru::Types::AttachmentView]
      def cleanup(request_options: {}, **params)
        params = Sikaru::Internal::Types::Utils.normalize_keys(params)
        request_data = Sikaru::ComputeAttachments::Types::CleanupInput.new(params).to_h
        non_body_param_names = %w[project_id attachment_id]
        body = request_data.except(*non_body_param_names)

        request = Sikaru::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/projects/#{URI.encode_uri_component(params[:project_id].to_s)}/compute-attachments/#{URI.encode_uri_component(params[:attachment_id].to_s)}/cleanup",
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
          (response.body.to_s.empty? ? nil : Sikaru::Types::AttachmentView.load(response.body))
        else
          error_class = Sikaru::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Attest original workspace/journal. Reconnection never replays uncertain effects.
      #
      # @param request_options [Hash]
      # @param params [Sikaru::Types::ReadyInput]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :project_id
      # @option params [String] :attachment_id
      #
      # @example
      #   client.compute_attachments.connect(
      #     project_id: "project_id",
      #     attachment_id: "attachment_id",
      #     capabilities: ["compute.execute"],
      #     executor_instance_id: "executor_instance_id",
      #     journal_id: "journal_id",
      #     protocol_version: "sikaru-compute-v1",
      #     workspace_provenance: {
      #       identity: "identity",
      #       kind: "existing_directory"
      #     }
      #   )
      #
      # @return [Sikaru::Types::AttachmentView]
      def connect(request_options: {}, **params)
        params = Sikaru::Internal::Types::Utils.normalize_keys(params)
        path_param_names = %i[project_id attachment_id]
        body_params = params.except(*path_param_names)

        request = Sikaru::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/projects/#{URI.encode_uri_component(params[:project_id].to_s)}/compute-attachments/#{URI.encode_uri_component(params[:attachment_id].to_s)}/connect",
          body: Sikaru::Types::ReadyInput.new(body_params).to_h,
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
          (response.body.to_s.empty? ? nil : Sikaru::Types::AttachmentView.load(response.body))
        else
          error_class = Sikaru::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # @param request_options [Hash]
      # @param params [Sikaru::ComputeAttachments::Types::ExecutorCredentialInput]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :project_id
      # @option params [String] :attachment_id
      #
      # @example
      #   client.compute_attachments.issue_credential(
      #     project_id: "project_id",
      #     attachment_id: "attachment_id",
      #     owner_epoch: 1,
      #     owner_id: "owner_id"
      #   )
      #
      # @return [Sikaru::Types::CredentialIssued]
      def issue_credential(request_options: {}, **params)
        params = Sikaru::Internal::Types::Utils.normalize_keys(params)
        request_data = Sikaru::ComputeAttachments::Types::ExecutorCredentialInput.new(params).to_h
        non_body_param_names = %w[project_id attachment_id]
        body = request_data.except(*non_body_param_names)

        request = Sikaru::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/projects/#{URI.encode_uri_component(params[:project_id].to_s)}/compute-attachments/#{URI.encode_uri_component(params[:attachment_id].to_s)}/credentials",
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
          (response.body.to_s.empty? ? nil : Sikaru::Types::CredentialIssued.load(response.body))
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
      #
      # @example
      #   client.compute_attachments.heartbeat(
      #     project_id: "project_id",
      #     attachment_id: "attachment_id"
      #   )
      #
      # @return [Sikaru::Types::AttachmentView]
      def heartbeat(request_options: {}, **params)
        params = Sikaru::Internal::Types::Utils.normalize_keys(params)
        request = Sikaru::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/projects/#{URI.encode_uri_component(params[:project_id].to_s)}/compute-attachments/#{URI.encode_uri_component(params[:attachment_id].to_s)}/heartbeat",
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
          (response.body.to_s.empty? ? nil : Sikaru::Types::AttachmentView.load(response.body))
        else
          error_class = Sikaru::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # @param request_options [Hash]
      # @param params [Sikaru::Types::ReadyInput]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :project_id
      # @option params [String] :attachment_id
      #
      # @example
      #   client.compute_attachments.ready(
      #     project_id: "project_id",
      #     attachment_id: "attachment_id",
      #     capabilities: ["compute.execute"],
      #     executor_instance_id: "executor_instance_id",
      #     journal_id: "journal_id",
      #     protocol_version: "sikaru-compute-v1",
      #     workspace_provenance: {
      #       identity: "identity",
      #       kind: "existing_directory"
      #     }
      #   )
      #
      # @return [Sikaru::Types::AttachmentView]
      def ready(request_options: {}, **params)
        params = Sikaru::Internal::Types::Utils.normalize_keys(params)
        path_param_names = %i[project_id attachment_id]
        body_params = params.except(*path_param_names)

        request = Sikaru::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/projects/#{URI.encode_uri_component(params[:project_id].to_s)}/compute-attachments/#{URI.encode_uri_component(params[:attachment_id].to_s)}/ready",
          body: Sikaru::Types::ReadyInput.new(body_params).to_h,
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
          (response.body.to_s.empty? ? nil : Sikaru::Types::AttachmentView.load(response.body))
        else
          error_class = Sikaru::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # @param request_options [Hash]
      # @param params [Sikaru::ComputeAttachments::Types::ReconcileInput]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :project_id
      # @option params [String] :attachment_id
      #
      # @example
      #   client.compute_attachments.reconcile(
      #     project_id: "project_id",
      #     attachment_id: "attachment_id",
      #     executor_instance_id: "executor_instance_id",
      #     journal_id: "journal_id",
      #     workspace_provenance: {
      #       identity: "identity",
      #       kind: "existing_directory"
      #     }
      #   )
      #
      # @return [Sikaru::Types::ReconcileView]
      def reconcile(request_options: {}, **params)
        params = Sikaru::Internal::Types::Utils.normalize_keys(params)
        request_data = Sikaru::ComputeAttachments::Types::ReconcileInput.new(params).to_h
        non_body_param_names = %w[project_id attachment_id]
        body = request_data.except(*non_body_param_names)

        request = Sikaru::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/projects/#{URI.encode_uri_component(params[:project_id].to_s)}/compute-attachments/#{URI.encode_uri_component(params[:attachment_id].to_s)}/reconcile",
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
          (response.body.to_s.empty? ? nil : Sikaru::Types::ReconcileView.load(response.body))
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
      #
      # @example
      #   client.compute_attachments.status(
      #     project_id: "project_id",
      #     attachment_id: "attachment_id"
      #   )
      #
      # @return [Sikaru::Types::AttachmentView]
      def status(request_options: {}, **params)
        params = Sikaru::Internal::Types::Utils.normalize_keys(params)
        request = Sikaru::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/projects/#{URI.encode_uri_component(params[:project_id].to_s)}/compute-attachments/#{URI.encode_uri_component(params[:attachment_id].to_s)}/status",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Sikaru::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : Sikaru::Types::AttachmentView.load(response.body))
        else
          error_class = Sikaru::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Executor can stop its own attachment and cancel its runs; cleanup is separately reported.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :project_id
      # @option params [String] :attachment_id
      #
      # @example
      #   client.compute_attachments.stop(
      #     project_id: "project_id",
      #     attachment_id: "attachment_id"
      #   )
      #
      # @return [Sikaru::Types::AttachmentView]
      def stop(request_options: {}, **params)
        params = Sikaru::Internal::Types::Utils.normalize_keys(params)
        request = Sikaru::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/projects/#{URI.encode_uri_component(params[:project_id].to_s)}/compute-attachments/#{URI.encode_uri_component(params[:attachment_id].to_s)}/stop",
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
          (response.body.to_s.empty? ? nil : Sikaru::Types::AttachmentView.load(response.body))
        else
          error_class = Sikaru::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Controller or owning worker attests sandbox teardown; clean parked turns stay resumable.
      #
      # @param request_options [Hash]
      # @param params [Sikaru::ComputeAttachments::Types::TeardownInput]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :project_id
      # @option params [String] :attachment_id
      #
      # @example
      #   client.compute_attachments.teardown(
      #     project_id: "project_id",
      #     attachment_id: "attachment_id",
      #     children_terminated: true,
      #     evidence: "evidence",
      #     owner_epoch: 1,
      #     owner_id: "owner_id",
      #     workspace_generation: "workspace_generation"
      #   )
      #
      # @return [Sikaru::Types::AttachmentView]
      def teardown(request_options: {}, **params)
        params = Sikaru::Internal::Types::Utils.normalize_keys(params)
        request_data = Sikaru::ComputeAttachments::Types::TeardownInput.new(params).to_h
        non_body_param_names = %w[project_id attachment_id]
        body = request_data.except(*non_body_param_names)

        request = Sikaru::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/projects/#{URI.encode_uri_component(params[:project_id].to_s)}/compute-attachments/#{URI.encode_uri_component(params[:attachment_id].to_s)}/teardown",
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
          (response.body.to_s.empty? ? nil : Sikaru::Types::AttachmentView.load(response.body))
        else
          error_class = Sikaru::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Same session/key/workspace returns the original binding; changed workspace conflicts.
      #
      # @param request_options [Hash]
      # @param params [Sikaru::ComputeAttachments::Types::AttachmentInput]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :project_id
      # @option params [String] :session_id
      #
      # @example
      #   client.compute_attachments.create(
      #     project_id: "project_id",
      #     session_id: "session_id",
      #     environment_id: "environment_id",
      #     idempotency_key: "idempotency_key",
      #     workspace_provenance: {
      #       identity: "identity",
      #       kind: "existing_directory"
      #     }
      #   )
      #
      # @return [Sikaru::Types::AttachmentView]
      def create(request_options: {}, **params)
        params = Sikaru::Internal::Types::Utils.normalize_keys(params)
        request_data = Sikaru::ComputeAttachments::Types::AttachmentInput.new(params).to_h
        non_body_param_names = %w[project_id session_id]
        body = request_data.except(*non_body_param_names)

        request = Sikaru::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/projects/#{URI.encode_uri_component(params[:project_id].to_s)}/execution-sessions/#{URI.encode_uri_component(params[:session_id].to_s)}/compute-attachments",
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
          (response.body.to_s.empty? ? nil : Sikaru::Types::AttachmentView.load(response.body))
        else
          error_class = Sikaru::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
