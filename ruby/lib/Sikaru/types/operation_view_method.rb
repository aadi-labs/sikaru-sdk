# frozen_string_literal: true

module Sikaru
  module Types
    module OperationViewMethod
      extend Sikaru::Internal::Types::Enum

      BASH_RUN = "bash.run"
      BASH_START = "bash.start"
      BASH_READ = "bash.read"
      BASH_WAIT = "bash.wait"
      BASH_CANCEL = "bash.cancel"
      WORKSPACE_WRITE_TEXT = "workspace.write_text"
      BASH_WAIT_FOR = "bash.wait_for"
      JOBS_NEXT_COMPLETED = "jobs.next_completed"
    end
  end
end
