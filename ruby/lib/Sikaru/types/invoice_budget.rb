# frozen_string_literal: true

module Sikaru
  module Types
    class InvoiceBudget < Internal::Types::Model
      field :learning, -> { Sikaru::Types::ResourceBudget }, optional: false, nullable: false

      field :period_end, -> { Integer }, optional: false, nullable: false

      field :period_start, -> { Integer }, optional: false, nullable: false

      field :production, -> { Sikaru::Types::ResourceBudget }, optional: false, nullable: false

      field :state, -> { String }, optional: false, nullable: false
    end
  end
end
