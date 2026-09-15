# frozen_string_literal: true

module Sikaru
  module Types
    class AgentImportModelCaptureRequest < Internal::Types::Model
      field :metadata, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

      field :mode, -> { String }, optional: false, nullable: false
    end
  end
end
