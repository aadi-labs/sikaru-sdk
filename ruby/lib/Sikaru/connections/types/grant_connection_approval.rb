# frozen_string_literal: true

module Sikaru
  module Connections
    module Types
      module GrantConnectionApproval
        extend Sikaru::Internal::Types::Enum

        ALWAYS = "always"
        NEVER = "never"
      end
    end
  end
end
