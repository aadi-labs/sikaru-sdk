# frozen_string_literal: true

module Sikaru
  module RunWebhooks
    module Types
      class WebhookInput < Internal::Types::Model
        field :project_id, -> { String }, optional: false, nullable: false

        field :idempotency_key, -> { String }, optional: true, nullable: false

        field :run_id, -> { String }, optional: false, nullable: false

        field :url, -> { String }, optional: false, nullable: false
      end
    end
  end
end
