# frozen_string_literal: true

module Sikaru
  module Types
    class FundingStatus < Internal::Types::Model
      field :amount_usd, -> { String }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :status, -> { String }, optional: false, nullable: false
    end
  end
end
