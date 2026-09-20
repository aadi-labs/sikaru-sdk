# frozen_string_literal: true

module Sikaru
  module Types
    class RunSpend < Internal::Types::Model
      field :reserved_usd, -> { String }, optional: false, nullable: false

      field :run_id, -> { String }, optional: false, nullable: false

      field :used_usd, -> { String }, optional: false, nullable: false
    end
  end
end
