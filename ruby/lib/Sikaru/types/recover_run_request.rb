# frozen_string_literal: true

module Sikaru
  module Types
    class RecoverRunRequest < Internal::Types::Model
      field :reason, -> { String }, optional: true, nullable: false
    end
  end
end
