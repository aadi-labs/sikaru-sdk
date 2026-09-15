# frozen_string_literal: true

module Sikaru
  module ExecutionSessions
    module Types
      class UploadFileExecutionSessionsRequest < Internal::Types::Model
        field :project_id, -> { String }, optional: false, nullable: false

        field :session_id, -> { String }, optional: false, nullable: false

        field :filename, -> { String }, optional: false, nullable: false
      end
    end
  end
end
