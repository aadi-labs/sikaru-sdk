# frozen_string_literal: true

module Sikaru
  module JudgeAlignment
    module Types
      class GetJudgeAlignmentJudgeAlignmentRequest < Internal::Types::Model
        field :project_id, -> { String }, optional: false, nullable: false

        field :evaluator, -> { String }, optional: false, nullable: false

        field :revision, -> { String }, optional: false, nullable: false

        field :environment, -> { Sikaru::JudgeAlignment::Types::GetJudgeAlignmentJudgeAlignmentRequestEnvironment }, optional: true, nullable: false
      end
    end
  end
end
