# frozen_string_literal: true

module Sikaru
  module Types
    module ScopeType
      extend Sikaru::Internal::Types::Enum

      GLOBAL = "global"
      ORGANIZATION = "organization"
      PROJECT = "project"
      PRODUCT = "product"
      AGENT = "agent"
      WORKFLOW = "workflow"
      COHORT = "cohort"
      USER = "user"
      RUN = "run"
    end
  end
end
