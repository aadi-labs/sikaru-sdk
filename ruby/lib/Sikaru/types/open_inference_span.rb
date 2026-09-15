# frozen_string_literal: true

module Sikaru
  module Types
    class OpenInferenceSpan < Internal::Types::Model
      field :attributes, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

      field :end_time, -> { String }, optional: true, nullable: false

      field :name, -> { String }, optional: true, nullable: false

      field :openinference_kind, -> { String }, optional: true, nullable: false

      field :parent_span_id, -> { String }, optional: true, nullable: false

      field :raw, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

      field :resource_attributes, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

      field :span_id, -> { String }, optional: false, nullable: false

      field :start_time, -> { String }, optional: true, nullable: false

      field :status_code, -> { String }, optional: true, nullable: false

      field :status_message, -> { String }, optional: true, nullable: false

      field :trace_id, -> { String }, optional: false, nullable: false
    end
  end
end
