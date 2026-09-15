# frozen_string_literal: true

module Sikaru
  module Types
    class ResumeInput < Internal::Types::Model
      field :source_run_id, -> { String }, optional: true, nullable: false
    end
  end
end
