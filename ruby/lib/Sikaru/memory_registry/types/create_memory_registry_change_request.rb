# frozen_string_literal: true

module Sikaru
  module MemoryRegistry
    module Types
      class CreateMemoryRegistryChangeRequest < Internal::Types::Model
        field :project_id, -> { String }, optional: false, nullable: false

        field :action, -> { Sikaru::MemoryRegistry::Types::CreateMemoryRegistryChangeRequestAction }, optional: true, nullable: false

        field :candidate_release_id, -> { String }, optional: true, nullable: false, api_name: "candidateReleaseId"

        field :confidence, -> { String }, optional: true, nullable: false

        field :memory_id, -> { String }, optional: false, nullable: false, api_name: "memoryId"

        field :memory_type, -> { String }, optional: false, nullable: false, api_name: "memoryType"

        field :name, -> { String }, optional: false, nullable: false

        field :policy, -> { String }, optional: true, nullable: false

        field :provenance, -> { String }, optional: true, nullable: false

        field :scope, -> { String }, optional: false, nullable: false

        field :source, -> { String }, optional: true, nullable: false

        field :source_trace_ids, -> { Internal::Types::Array[String] }, optional: true, nullable: false, api_name: "sourceTraceIds"

        field :ttl, -> { String }, optional: true, nullable: false
      end
    end
  end
end
