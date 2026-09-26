# frozen_string_literal: true

module Sikaru
  module Types
    module ReadyInputCapabilitiesItem
      extend Sikaru::Internal::Types::Enum

      COMPUTE_EXECUTE = "compute.execute"
      BASH_RUN = "bash.run"
      FILESYSTEM_CHECKPOINT_V1 = "filesystem-checkpoint-v1"
    end
  end
end
