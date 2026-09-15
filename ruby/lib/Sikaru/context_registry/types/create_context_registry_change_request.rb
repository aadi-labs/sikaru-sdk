# frozen_string_literal: true

module Sikaru
  module ContextRegistry
    module Types
      class CreateContextRegistryChangeRequest < Internal::Types::Model
        field :project_id, -> { String }, optional: false, nullable: false

        field :action, -> { Sikaru::ContextRegistry::Types::CreateContextRegistryChangeRequestAction }, optional: true, nullable: false

        field :files, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :kind, -> { String }, optional: true, nullable: false

        field :linked_signal, -> { String }, optional: true, nullable: false, api_name: "linkedSignal"

        field :name, -> { String }, optional: false, nullable: false

        field :owner, -> { String }, optional: true, nullable: false

        field :production_commit, -> { String }, optional: true, nullable: false, api_name: "productionCommit"

        field :production_tag, -> { String }, optional: true, nullable: false, api_name: "productionTag"

        field :repo_id, -> { String }, optional: false, nullable: false, api_name: "repoId"

        field :repo_type, -> { String }, optional: true, nullable: false, api_name: "repoType"

        field :source_trace_ids, -> { Internal::Types::Array[String] }, optional: true, nullable: false, api_name: "sourceTraceIds"

        field :staging_commit, -> { String }, optional: true, nullable: false, api_name: "stagingCommit"

        field :staging_tag, -> { String }, optional: true, nullable: false, api_name: "stagingTag"

        field :tools, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :variables, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :visibility, -> { String }, optional: true, nullable: false
      end
    end
  end
end
