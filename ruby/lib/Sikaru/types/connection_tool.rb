# frozen_string_literal: true

module Sikaru
  module Types
    class ConnectionTool < Internal::Types::Model
      field :description, -> { String }, optional: true, nullable: false

      field :digest, -> { String }, optional: false, nullable: false

      field :input_schema, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: false

      field :version, -> { String }, optional: true, nullable: false
    end
  end
end
