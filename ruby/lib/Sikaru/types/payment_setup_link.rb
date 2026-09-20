# frozen_string_literal: true

module Sikaru
  module Types
    class PaymentSetupLink < Internal::Types::Model
      field :url, -> { String }, optional: false, nullable: false
    end
  end
end
