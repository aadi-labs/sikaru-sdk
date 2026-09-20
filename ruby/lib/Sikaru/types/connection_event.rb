# frozen_string_literal: true

module Sikaru
  module Types
    class ConnectionEvent < Internal::Types::Model
      field :action, -> { String }, optional: false, nullable: false

      field :actor, -> { String }, optional: false, nullable: false

      field :created_at, -> { Integer }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false
    end
  end
end
