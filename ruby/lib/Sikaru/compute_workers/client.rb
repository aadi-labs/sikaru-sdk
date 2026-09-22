# frozen_string_literal: true

module Sikaru
  module ComputeWorkers
    class Client
      # @param client [Sikaru::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Issue a new secret once; retries issue independent revocable credentials.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :project_id
      # @option params [String] :environment_id
      #
      # @example
      #   client.compute_workers.issue_credential(
      #     project_id: "project_id",
      #     environment_id: "environment_id"
      #   )
      #
      # @return [Sikaru::Types::CredentialIssued]
      def issue_credential(request_options: {}, **params)
        params = Sikaru::Internal::Types::Utils.normalize_keys(params)
        request = Sikaru::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/projects/#{URI.encode_uri_component(params[:project_id].to_s)}/compute-environments/#{URI.encode_uri_component(params[:environment_id].to_s)}/credentials",
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

      # Bounded queue snapshot. wait_seconds is a maximum; server may return immediately.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :project_id
      # @option params [String] :environment_id
      # @option params [Integer, nil] :wait_seconds
      # @option params [Integer, nil] :limit
      #
      # @example
      #   client.compute_workers.poll(
      #     project_id: "project_id",
      #     environment_id: "environment_id"
      #   )
      #
      # @return [Sikaru::Types::QueuePage]
      def poll(request_options: {}, **params)
        params = Sikaru::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["wait_seconds"] = params[:wait_seconds] if params.key?(:wait_seconds)
        query_params["limit"] = params[:limit] if params.key?(:limit)

        request = Sikaru::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/projects/#{URI.encode_uri_component(params[:project_id].to_s)}/compute-environments/#{URI.encode_uri_component(params[:environment_id].to_s)}/queue",
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
          (response.body.to_s.empty? ? nil : Sikaru::Types::QueuePage.load(response.body))
        else
          error_class = Sikaru::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
