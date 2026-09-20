# frozen_string_literal: true

module Sikaru
  module Types
    class FundingReceipt < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :status, -> { String }, optional: false, nullable: false
    end
  end
end
