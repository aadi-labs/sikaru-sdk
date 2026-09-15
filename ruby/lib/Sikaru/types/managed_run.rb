# frozen_string_literal: true

module Sikaru
  module Types
    class ManagedRun < Internal::Types::Model
      field :compatibility_profile_id, -> { String }, optional: true, nullable: false, api_name: "compatibilityProfileId"

      field :completed_at, -> { String }, optional: true, nullable: false, api_name: "completedAt"

      field :cost_summary, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false, api_name: "costSummary"

      field :events_url, -> { String }, optional: false, nullable: false, api_name: "eventsUrl"

      field :harness_id, -> { String }, optional: false, nullable: false, api_name: "harnessId"

      field :harness_version_id, -> { String }, optional: false, nullable: false, api_name: "harnessVersionId"

      field :latency_ms, -> { Integer }, optional: true, nullable: false, api_name: "latencyMs"

      field :run_id, -> { String }, optional: false, nullable: false, api_name: "runId"

      field :status, -> { String }, optional: false, nullable: false

      field :usage_summary, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false, api_name: "usageSummary"
    end
  end
end
