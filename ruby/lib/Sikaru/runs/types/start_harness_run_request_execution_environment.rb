# frozen_string_literal: true

module Sikaru
  module Runs
    module Types
      module StartHarnessRunRequestExecutionEnvironment
        extend Sikaru::Internal::Types::Enum

        MANAGED = "managed"
        LOCAL = "local"
      end
    end
  end
end
