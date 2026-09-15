# frozen_string_literal: true

module Sikaru
  module Types
    class ToolSkillSourceRequest < Internal::Types::Model
      field :content, -> { String }, optional: true, nullable: false

      field :kind, -> { String }, optional: false, nullable: false

      field :ref, -> { String }, optional: true, nullable: false
    end
  end
end
