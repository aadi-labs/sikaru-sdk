# frozen_string_literal: true

module Sikaru
  module ImportSessions
    module Types
      class CreateImportSessionRequest < Internal::Types::Model
        field :project_id, -> { String }, optional: false, nullable: false

        field :display_name, -> { String }, optional: false, nullable: false, api_name: "displayName"

        field :mode, -> { Sikaru::ImportSessions::Types::CreateImportSessionRequestMode }, optional: false, nullable: false
      end
    end
  end
end
