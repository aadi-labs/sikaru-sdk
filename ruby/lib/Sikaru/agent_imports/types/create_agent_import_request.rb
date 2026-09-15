# frozen_string_literal: true

module Sikaru
  module AgentImports
    module Types
      class CreateAgentImportRequest < Internal::Types::Model
        field :project_id, -> { String }, optional: false, nullable: false

        field :eval_suites, -> { Internal::Types::Array[Sikaru::Types::AgentImportEvalSuiteRequest] }, optional: true, nullable: false, api_name: "evalSuites"

        field :improve, -> { Sikaru::Types::AgentImportImproveRequest }, optional: false, nullable: false

        field :model_capture, -> { Sikaru::Types::AgentImportModelCaptureRequest }, optional: true, nullable: false, api_name: "modelCapture"

        field :name, -> { String }, optional: false, nullable: false

        field :runner, -> { Sikaru::Types::AgentImportRunnerRequest }, optional: true, nullable: false

        field :source_refs, -> { Internal::Types::Array[Sikaru::Types::AgentImportSourceRefRequest] }, optional: true, nullable: false, api_name: "sourceRefs"
      end
    end
  end
end
