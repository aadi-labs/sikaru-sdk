# frozen_string_literal: true

module Sikaru
  module Types
    class CredentialRevoked < Internal::Types::Model
      field :credential_id, -> { String }, optional: false, nullable: false

      field :revoked_at, -> { Integer }, optional: false, nullable: false
    end
  end
end
