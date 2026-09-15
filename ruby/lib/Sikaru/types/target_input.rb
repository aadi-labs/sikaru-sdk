# frozen_string_literal: true

module Sikaru
  module Types
    class TargetInput < Internal::Types::Model
      field :target, -> { Sikaru::Types::JudgmentTarget }, optional: false, nullable: false

      field :trace_id, -> { String }, optional: false, nullable: false, api_name: "traceId"
    end
  end
end
