# frozen_string_literal: true

module Sikaru
  module Types
    class WorkspaceChunk < Internal::Types::Model
      field :sha256, -> { String }, optional: false, nullable: false

      field :size, -> { Integer }, optional: false, nullable: false
    end
  end
end
