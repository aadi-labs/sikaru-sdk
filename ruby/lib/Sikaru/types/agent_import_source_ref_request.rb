# frozen_string_literal: true

module Sikaru
  module Types
    class AgentImportSourceRefRequest < Internal::Types::Model
      field :content_digest, -> { String }, optional: false, nullable: false, api_name: "contentDigest"

      field :export_policy, -> { Sikaru::Types::AgentImportSourceRefRequestExportPolicy }, optional: true, nullable: false, api_name: "exportPolicy"

      field :metadata, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

      field :role, -> { String }, optional: false, nullable: false

      field :storage_ref, -> { String }, optional: false, nullable: false, api_name: "storageRef"
    end
  end
end
