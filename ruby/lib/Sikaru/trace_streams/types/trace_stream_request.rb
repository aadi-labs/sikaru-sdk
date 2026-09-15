# frozen_string_literal: true

module Sikaru
  module TraceStreams
    module Types
      class TraceStreamRequest < Internal::Types::Model
        field :idempotency_key, -> { String }, optional: true, nullable: false, api_name: "Idempotency-Key"

        field :sikaru_client_id, -> { String }, optional: true, nullable: false, api_name: "X-Sikaru-Client-Id"

        field :dataset, -> { String }, optional: true, nullable: false

        field :format, -> { Sikaru::TraceStreams::Types::TraceStreamRequestFormat }, optional: false, nullable: false

        field :metadata, -> { Sikaru::Types::TraceMetadata }, optional: false, nullable: false

        field :resource_spans, -> { Internal::Types::Array[Internal::Types::Hash[String, Object]] }, optional: true, nullable: false, api_name: "resourceSpans"

        field :spans, -> { Internal::Types::Array[Sikaru::Types::OpenInferenceSpan] }, optional: true, nullable: false

        field :trajectories, -> { Internal::Types::Array[Internal::Types::Hash[String, Object]] }, optional: true, nullable: false

        field :trajectory, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false
      end
    end
  end
end
