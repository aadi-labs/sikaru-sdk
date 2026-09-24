# frozen_string_literal: true

module Sikaru
  module Types
    class ResourceBudget < Internal::Types::Model
      field :limit_usd, -> { String }, optional: false, nullable: true

      field :reserved_usd, -> { String }, optional: false, nullable: false

      field :used_usd, -> { String }, optional: false, nullable: false
    end
  end
end
