# frozen_string_literal: true

module Sikaru
  module Types
    class TraceMetadata < Internal::Types::Model
      field :account_id, -> { String }, optional: false, nullable: false

      field :base_harness_version_id, -> { String }, optional: true, nullable: false

      field :compatibility_profile_id, -> { String }, optional: true, nullable: false

      field :conversation_id, -> { String }, optional: true, nullable: false

      field :converter_version, -> { String }, optional: true, nullable: false

      field :correlation_id, -> { String }, optional: true, nullable: false

      field :harness_id, -> { String }, optional: true, nullable: false

      field :harness_version_id, -> { String }, optional: true, nullable: false

      field :import_generation_id, -> { String }, optional: true, nullable: false

      field :job_id, -> { String }, optional: true, nullable: false

      field :organization_id, -> { String }, optional: true, nullable: false

      field :product_id, -> { String }, optional: true, nullable: false

      field :project_id, -> { String }, optional: false, nullable: false

      field :source, -> { String }, optional: false, nullable: false

      field :source_instance, -> { String }, optional: true, nullable: false

      field :tenant_id, -> { String }, optional: true, nullable: false

      field :trace_id, -> { String }, optional: true, nullable: false

      field :user_id, -> { String }, optional: true, nullable: false
    end
  end
end
