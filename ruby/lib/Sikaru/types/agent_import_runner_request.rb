# frozen_string_literal: true

module Sikaru
  module Types
    class AgentImportRunnerRequest < Internal::Types::Model
      field :entrypoint, -> { String }, optional: false, nullable: false

      field :environment_ref, -> { String }, optional: true, nullable: false, api_name: "environmentRef"

      field :kind, -> { String }, optional: false, nullable: false

      field :metadata, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false
    end
  end
end
