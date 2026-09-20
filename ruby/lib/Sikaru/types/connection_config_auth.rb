# frozen_string_literal: true

module Sikaru
  module Types
    module ConnectionConfigAuth
      extend Sikaru::Internal::Types::Enum

      NONE = "none"
      BEARER = "bearer"
      API_KEY = "api_key"
      OAUTH = "oauth"
    end
  end
end
