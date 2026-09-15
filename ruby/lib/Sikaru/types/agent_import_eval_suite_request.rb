# frozen_string_literal: true

module Sikaru
  module Types
    class AgentImportEvalSuiteRequest < Internal::Types::Model
      field :kind, -> { String }, optional: false, nullable: false

      field :metadata, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

      field :primary_metric, -> { String }, optional: false, nullable: false, api_name: "primaryMetric"

      field :storage_ref, -> { String }, optional: false, nullable: false, api_name: "storageRef"
    end
  end
end
