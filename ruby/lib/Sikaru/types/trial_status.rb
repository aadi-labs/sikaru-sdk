# frozen_string_literal: true

module Sikaru
  module Types
    class TrialStatus < Internal::Types::Model
      field :ends_at, -> { Integer }, optional: false, nullable: true

      field :remaining_usd, -> { String }, optional: false, nullable: false

      field :state, -> { Sikaru::Types::TrialStatusState }, optional: false, nullable: false
    end
  end
end
