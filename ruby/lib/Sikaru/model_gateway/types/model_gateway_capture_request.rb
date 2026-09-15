# frozen_string_literal: true

module Sikaru
  module ModelGateway
    module Types
      class ModelGatewayCaptureRequest < Internal::Types::Model
        field :project_id, -> { String }, optional: false, nullable: false

        field :provider, -> { String }, optional: false, nullable: false

        field :error, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

        field :metadata, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

        field :request, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: false

        field :response, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false
      end
    end
  end
end
