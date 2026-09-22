# frozen_string_literal: true

module Sikaru
  module AgentBudgets
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
      # @option params [String] :harness_id
      #
      # @example
      #   client.agent_budgets.get(
      #     project_id: "project_id",
      #     harness_id: "harness_id"
      #   )
      #
      # @return [Sikaru::Types::AgentBudget]
      def get(request_options: {}, **params)
        params = Sikaru::Internal::Types::Utils.normalize_keys(params)
        request = Sikaru::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/projects/#{URI.encode_uri_component(params[:project_id].to_s)}/harnesses/#{URI.encode_uri_component(params[:harness_id].to_s)}/budget",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Sikaru::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : Sikaru::Types::AgentBudget.load(response.body))
        else
          error_class = Sikaru::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # @param request_options [Hash]
      # @param params [Sikaru::AgentBudgets::Types::ReloadInput]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :project_id
      # @option params [String] :harness_id
      #
      # @example
      #   client.agent_budgets.configure_auto_reload(
      #     project_id: "project_id",
      #     harness_id: "harness_id",
      #     amount_usd: "amount_usd",
      #     enabled: true,
      #     threshold_usd: "threshold_usd"
      #   )
      #
      # @return [Sikaru::Types::AgentBudget]
      def configure_auto_reload(request_options: {}, **params)
        params = Sikaru::Internal::Types::Utils.normalize_keys(params)
        request_data = Sikaru::AgentBudgets::Types::ReloadInput.new(params).to_h
        non_body_param_names = %w[project_id harness_id]
        body = request_data.except(*non_body_param_names)

        request = Sikaru::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PUT",
          path: "v1/projects/#{URI.encode_uri_component(params[:project_id].to_s)}/harnesses/#{URI.encode_uri_component(params[:harness_id].to_s)}/budget/auto-reload",
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
          (response.body.to_s.empty? ? nil : Sikaru::Types::AgentBudget.load(response.body))
        else
          error_class = Sikaru::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # @param request_options [Hash]
      # @param params [Sikaru::AgentBudgets::Types::FundingInput]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :project_id
      # @option params [String] :harness_id
      #
      # @example
      #   client.agent_budgets.add(
      #     project_id: "project_id",
      #     harness_id: "harness_id",
      #     amount_usd: "amount_usd",
      #     idempotency_key: "idempotency_key"
      #   )
      #
      # @return [Sikaru::Types::FundingReceipt]
      def add(request_options: {}, **params)
        params = Sikaru::Internal::Types::Utils.normalize_keys(params)
        request_data = Sikaru::AgentBudgets::Types::FundingInput.new(params).to_h
        non_body_param_names = %w[project_id harness_id]
        body = request_data.except(*non_body_param_names)

        request = Sikaru::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/projects/#{URI.encode_uri_component(params[:project_id].to_s)}/harnesses/#{URI.encode_uri_component(params[:harness_id].to_s)}/budget/funding",
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
          (response.body.to_s.empty? ? nil : Sikaru::Types::FundingReceipt.load(response.body))
        else
          error_class = Sikaru::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # @param request_options [Hash]
      # @param params [Sikaru::AgentBudgets::Types::SetupInput]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :project_id
      # @option params [String] :harness_id
      #
      # @example
      #   client.agent_budgets.setup_payment_method(
      #     project_id: "project_id",
      #     harness_id: "harness_id",
      #     idempotency_key: "idempotency_key"
      #   )
      #
      # @return [Sikaru::Types::PaymentSetupLink]
      def setup_payment_method(request_options: {}, **params)
        params = Sikaru::Internal::Types::Utils.normalize_keys(params)
        request_data = Sikaru::AgentBudgets::Types::SetupInput.new(params).to_h
        non_body_param_names = %w[project_id harness_id]
        body = request_data.except(*non_body_param_names)

        request = Sikaru::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/projects/#{URI.encode_uri_component(params[:project_id].to_s)}/harnesses/#{URI.encode_uri_component(params[:harness_id].to_s)}/budget/payment-method",
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
          (response.body.to_s.empty? ? nil : Sikaru::Types::PaymentSetupLink.load(response.body))
        else
          error_class = Sikaru::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
