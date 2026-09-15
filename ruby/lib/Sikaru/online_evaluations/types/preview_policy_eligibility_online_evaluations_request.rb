# frozen_string_literal: true

module Sikaru
  module OnlineEvaluations
    module Types
      class PreviewPolicyEligibilityOnlineEvaluationsRequest < Internal::Types::Model
        field :project_id, -> { String }, optional: false, nullable: false

        field :environment, -> { Sikaru::OnlineEvaluations::Types::PreviewPolicyEligibilityOnlineEvaluationsRequestEnvironment }, optional: true, nullable: false
      end
    end
  end
end
