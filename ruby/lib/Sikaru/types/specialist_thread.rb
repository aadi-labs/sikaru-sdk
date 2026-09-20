# frozen_string_literal: true

module Sikaru
  module Types
    class SpecialistThread < Internal::Types::Model
      field :final_text, -> { String }, optional: false, nullable: true, api_name: "finalText"

      field :id, -> { String }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: false

      field :parent_thread_id, -> { String }, optional: false, nullable: true, api_name: "parentThreadId"

      field :run_id, -> { String }, optional: false, nullable: false, api_name: "runId"

      field :status, -> { String }, optional: false, nullable: false
    end
  end
end
