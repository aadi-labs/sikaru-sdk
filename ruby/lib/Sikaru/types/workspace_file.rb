# frozen_string_literal: true

module Sikaru
  module Types
    class WorkspaceFile < Internal::Types::Model
      field :chunks, -> { Internal::Types::Array[Sikaru::Types::WorkspaceChunk] }, optional: false, nullable: false

      field :mode, -> { Integer }, optional: false, nullable: false

      field :sha256, -> { String }, optional: false, nullable: false

      field :size, -> { Integer }, optional: false, nullable: false
    end
  end
end
