# frozen_string_literal: true

module Sikaru
  module ReviewQueue
    module Types
      class CreateReviewQueueItemRequest < Internal::Types::Model
        field :project_id, -> { String }, optional: false, nullable: false

        field :action, -> { Sikaru::ReviewQueue::Types::CreateReviewQueueItemRequestAction }, optional: true, nullable: false

        field :agent_id, -> { String }, optional: true, nullable: false, api_name: "agentId"

        field :backfill_window, -> { String }, optional: true, nullable: false, api_name: "backfillWindow"

        field :filter_expression, -> { String }, optional: true, nullable: false, api_name: "filterExpression"

        field :issue_id, -> { String }, optional: true, nullable: false, api_name: "issueId"

        field :issue_title, -> { String }, optional: true, nullable: false, api_name: "issueTitle"

        field :rule_id, -> { String }, optional: true, nullable: false, api_name: "ruleId"

        field :rule_name, -> { String }, optional: true, nullable: false, api_name: "ruleName"

        field :sample_rate, -> { String }, optional: true, nullable: false, api_name: "sampleRate"

        field :signal_tags, -> { Internal::Types::Array[String] }, optional: true, nullable: false, api_name: "signalTags"

        field :target, -> { String }, optional: true, nullable: false

        field :trace_ids, -> { Internal::Types::Array[String] }, optional: false, nullable: false, api_name: "traceIds"
      end
    end
  end
end
