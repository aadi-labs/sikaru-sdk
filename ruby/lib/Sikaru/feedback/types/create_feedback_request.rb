# frozen_string_literal: true

module Sikaru
  module Feedback
    module Types
      class CreateFeedbackRequest < Internal::Types::Model
        field :project_id, -> { String }, optional: false, nullable: false

        field :issue_id, -> { String }, optional: true, nullable: false, api_name: "issueId"

        field :kind, -> { Sikaru::Feedback::Types::CreateFeedbackRequestKind }, optional: false, nullable: false

        field :note, -> { String }, optional: true, nullable: false

        field :session_id, -> { String }, optional: true, nullable: false, api_name: "sessionId"

        field :span_id, -> { String }, optional: true, nullable: false, api_name: "spanId"

        field :tag, -> { String }, optional: true, nullable: false

        field :target, -> { Sikaru::Feedback::Types::CreateFeedbackRequestTarget }, optional: false, nullable: false

        field :target_id, -> { String }, optional: false, nullable: false, api_name: "targetId"

        field :trace_id, -> { String }, optional: true, nullable: false, api_name: "traceId"
      end
    end
  end
end
