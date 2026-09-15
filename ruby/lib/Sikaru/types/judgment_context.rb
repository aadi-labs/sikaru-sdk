# frozen_string_literal: true

module Sikaru
  module Types
    class JudgmentContext < Internal::Types::Model
      field :content, -> { String }, optional: false, nullable: false

      field :sha256, -> { String }, optional: false, nullable: false
    end
  end
end
