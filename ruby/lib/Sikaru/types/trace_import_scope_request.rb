# frozen_string_literal: true

module Sikaru
  module Types
    class TraceImportScopeRequest < Internal::Types::Model
      field :external_ids, -> { Internal::Types::Array[String] }, optional: true, nullable: false, api_name: "externalIds"

      field :since, -> { String }, optional: true, nullable: false

      field :until_, -> { String }, optional: true, nullable: false, api_name: "until"
    end
  end
end
