# frozen_string_literal: true

module Sikaru
  module ToolProviders
    module Types
      class AttachSourceToolSkillRequest < Internal::Types::Model
        field :project_id, -> { String }, optional: false, nullable: false

        field :tool_provider_id, -> { String }, optional: false, nullable: false

        field :capability_refs, -> { Internal::Types::Array[String] }, optional: false, nullable: false

        field :description, -> { String }, optional: false, nullable: false

        field :source, -> { Sikaru::Types::ToolSkillSourceRequest }, optional: false, nullable: false
      end
    end
  end
end
