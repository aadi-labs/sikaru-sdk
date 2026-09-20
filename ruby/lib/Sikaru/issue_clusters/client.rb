# frozen_string_literal: true

module Sikaru
  module IssueClusters
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
      # @option params [String, nil] :status
      # @option params [String, nil] :severity
      #
      # @example
      #   client.issue_clusters.list_issue_clusters(project_id: "project_id")
      #
      # @return [Hash[String, Object]]
      def list_issue_clusters(request_options: {}, **params)
        params = Sikaru::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["status"] = params[:status] if params.key?(:status)
        query_params["severity"] = params[:severity] if params.key?(:severity)

        request = Sikaru::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/projects/#{URI.encode_uri_component(params[:project_id].to_s)}/issue-clusters",
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
      # @param params [Sikaru::IssueClusters::Types::UpsertIssueClusterRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :project_id
      #
      # @example
      #   client.issue_clusters.upsert_issue_cluster(
      #     project_id: "project_id",
      #     label: "label",
      #     trace_ids: ["traceIds"]
      #   )
      #
      # @return [Hash[String, Object]]
      def upsert_issue_cluster(request_options: {}, **params)
        params = Sikaru::Internal::Types::Utils.normalize_keys(params)
        request_data = Sikaru::IssueClusters::Types::UpsertIssueClusterRequest.new(params).to_h
        non_body_param_names = %w[project_id]
        body = request_data.except(*non_body_param_names)

        request = Sikaru::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/projects/#{URI.encode_uri_component(params[:project_id].to_s)}/issue-clusters",
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

      # Run one failure-analysis agent pass over the project's recent traces.
      #
      # This is a model-latency operation on a request path: the endpoint is sync so
      # the harness runs in the threadpool, and a project may only have one pass in
      # flight. A background job queue is the long-term home for this work; the
      # in-flight guard below is the interim bound.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :project_id
      # @option params [String, nil] :since
      # @option params [String, nil] :until_
      #
      # @example
      #   client.issue_clusters.mine_project_issue_clusters(project_id: "project_id")
      #
      # @return [Hash[String, Object]]
      def mine_project_issue_clusters(request_options: {}, **params)
        params = Sikaru::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["since"] = params[:since] if params.key?(:since)
        query_params["until"] = params[:until_] if params.key?(:until_)

        request = Sikaru::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/projects/#{URI.encode_uri_component(params[:project_id].to_s)}/issue-clusters/mine",
          query: query_params,
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
      # @option params [String] :cluster_id
      #
      # @example
      #   client.issue_clusters.get_issue_cluster(
      #     project_id: "project_id",
      #     cluster_id: "cluster_id"
      #   )
      #
      # @return [Hash[String, Object]]
      def get_issue_cluster(request_options: {}, **params)
        params = Sikaru::Internal::Types::Utils.normalize_keys(params)
        request = Sikaru::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/projects/#{URI.encode_uri_component(params[:project_id].to_s)}/issue-clusters/#{URI.encode_uri_component(params[:cluster_id].to_s)}",
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
      # @param params [Sikaru::IssueClusters::Types::UpdateIssueClusterStatusRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :project_id
      # @option params [String] :cluster_id
      #
      # @example
      #   client.issue_clusters.update_issue_cluster_status(
      #     project_id: "project_id",
      #     cluster_id: "cluster_id",
      #     status: "status"
      #   )
      #
      # @return [Hash[String, Object]]
      def update_issue_cluster_status(request_options: {}, **params)
        params = Sikaru::Internal::Types::Utils.normalize_keys(params)
        request_data = Sikaru::IssueClusters::Types::UpdateIssueClusterStatusRequest.new(params).to_h
        non_body_param_names = %w[project_id cluster_id]
        body = request_data.except(*non_body_param_names)

        request = Sikaru::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PATCH",
          path: "v1/projects/#{URI.encode_uri_component(params[:project_id].to_s)}/issue-clusters/#{URI.encode_uri_component(params[:cluster_id].to_s)}",
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
      # @option params [String] :cluster_id
      #
      # @example
      #   client.issue_clusters.propose_issue_cluster_fix(
      #     project_id: "project_id",
      #     cluster_id: "cluster_id"
      #   )
      #
      # @return [Hash[String, Object]]
      def propose_issue_cluster_fix(request_options: {}, **params)
        params = Sikaru::Internal::Types::Utils.normalize_keys(params)
        request = Sikaru::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/projects/#{URI.encode_uri_component(params[:project_id].to_s)}/issue-clusters/#{URI.encode_uri_component(params[:cluster_id].to_s)}/propose-fix",
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
