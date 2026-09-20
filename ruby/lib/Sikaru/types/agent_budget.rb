# frozen_string_literal: true

module Sikaru
  module Types
    class AgentBudget < Internal::Types::Model
      field :auto_reload, -> { Sikaru::Types::ReloadSettings }, optional: false, nullable: true

      field :funded_usd, -> { String }, optional: false, nullable: false

      field :funding, -> { Sikaru::Types::FundingStatus }, optional: false, nullable: true

      field :payment_method_saved, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :remaining_usd, -> { String }, optional: false, nullable: false

      field :reserved_usd, -> { String }, optional: false, nullable: false

      field :used_usd, -> { String }, optional: false, nullable: false
    end
  end
end
