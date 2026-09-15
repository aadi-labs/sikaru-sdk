# frozen_string_literal: true

module Sikaru
  module Types
    class TraceImportGroupingRequest < Internal::Types::Model
      field :contract_version, -> { String }, optional: true, nullable: false, api_name: "contractVersion"

      field :join_on, -> { String }, optional: true, nullable: false, api_name: "joinOn"
    end
  end
end
