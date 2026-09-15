# frozen_string_literal: true

module Sikaru
  module Types
    class ToolProviderRefRequest < Internal::Types::Model
      field :capability_prefix, -> { String }, optional: false, nullable: false

      field :source_skill_refs, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :tool_provider_id, -> { String }, optional: false, nullable: false
    end
  end
end
