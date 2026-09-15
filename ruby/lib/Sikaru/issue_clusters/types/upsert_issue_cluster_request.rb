# frozen_string_literal: true

module Sikaru
  module IssueClusters
    module Types
      class UpsertIssueClusterRequest < Internal::Types::Model
        field :project_id, -> { String }, optional: false, nullable: false

        field :agent_id, -> { String }, optional: true, nullable: false, api_name: "agentId"

        field :impact, -> { Integer }, optional: true, nullable: false

        field :issue_id, -> { String }, optional: true, nullable: false, api_name: "issueId"

        field :issue_title, -> { String }, optional: true, nullable: false, api_name: "issueTitle"

        field :label, -> { String }, optional: false, nullable: false

        field :signal_tags, -> { Internal::Types::Array[String] }, optional: true, nullable: false, api_name: "signalTags"

        field :trace_ids, -> { Internal::Types::Array[String] }, optional: false, nullable: false, api_name: "traceIds"
      end
    end
  end
end
