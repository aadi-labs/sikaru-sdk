# frozen_string_literal: true

module Sikaru
  module Types
    class AgentImportImproveRequest < Internal::Types::Model
      field :mode, -> { String }, optional: false, nullable: false

      field :objective, -> { String }, optional: false, nullable: false

      field :promotion_gate, -> { String }, optional: false, nullable: false, api_name: "promotionGate"
    end
  end
end
