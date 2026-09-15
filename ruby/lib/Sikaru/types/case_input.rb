# frozen_string_literal: true

module Sikaru
  module Types
    class CaseInput < Internal::Types::Model
      field :baseline, -> { Sikaru::Types::AnswerRef }, optional: false, nullable: false

      field :candidate, -> { Sikaru::Types::AnswerRef }, optional: false, nullable: false

      field :case_id, -> { String }, optional: false, nullable: false, api_name: "caseId"
    end
  end
end
