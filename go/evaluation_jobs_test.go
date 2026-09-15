
package api

import (
	json "encoding/json"
	assert "github.com/stretchr/testify/assert"
	require "github.com/stretchr/testify/require"
	testing "testing"
)

func TestSettersJobInput(t *testing.T) {
	t.Run("SetEnvironment", func(t *testing.T) {
		obj := &JobInput{}
		var fernTestValueEnvironment *JobInputEnvironment
		obj.SetEnvironment(fernTestValueEnvironment)
		assert.Equal(t, fernTestValueEnvironment, obj.Environment)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetEvaluator", func(t *testing.T) {
		obj := &JobInput{}
		var fernTestValueEvaluator string
		obj.SetEvaluator(fernTestValueEvaluator)
		assert.Equal(t, fernTestValueEvaluator, obj.Evaluator)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetRequestID", func(t *testing.T) {
		obj := &JobInput{}
		var fernTestValueRequestID string
		obj.SetRequestID(fernTestValueRequestID)
		assert.Equal(t, fernTestValueRequestID, obj.RequestID)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetRevision", func(t *testing.T) {
		obj := &JobInput{}
		var fernTestValueRevision string
		obj.SetRevision(fernTestValueRevision)
		assert.Equal(t, fernTestValueRevision, obj.Revision)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetRubric", func(t *testing.T) {
		obj := &JobInput{}
		var fernTestValueRubric string
		obj.SetRubric(fernTestValueRubric)
		assert.Equal(t, fernTestValueRubric, obj.Rubric)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetTargets", func(t *testing.T) {
		obj := &JobInput{}
		var fernTestValueTargets []*TargetInput
		obj.SetTargets(fernTestValueTargets)
		assert.Equal(t, fernTestValueTargets, obj.Targets)
		assert.NotNil(t, obj.explicitFields)
	})

}

func TestSettersMarkExplicitJobInput(t *testing.T) {
	t.Run("SetEnvironment_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &JobInput{}
		var fernTestValueEnvironment *JobInputEnvironment

		// Act
		obj.SetEnvironment(fernTestValueEnvironment)

		// Assert - object with explicitly set field can be marshaled/unmarshaled
		bytes, err := json.Marshal(obj)
		require.NoError(t, err, "marshaling should succeed for test setup")

		// This test ensures JSON marshaling and unmarshaling succeed when the field has a zero/nil value
		// Detect if marshaled JSON is an object or primitive to use correct unmarshal target
		if len(bytes) > 0 && bytes[0] == '{' {
			// JSON object - unmarshal into map
			var unmarshaled map[string]interface{}
			err = json.Unmarshal(bytes, &unmarshaled)
			require.NoError(t, err, "unmarshaling should succeed for test verification")
		} else {
			// JSON primitive (string, number, boolean, null) - unmarshal into interface{}
			var unmarshaled interface{}
			err = json.Unmarshal(bytes, &unmarshaled)
			require.NoError(t, err, "unmarshaling should succeed for test verification")
		}

		// Note: This does not explicitly assert the presence of a specific JSON field
		// It verifies that setting a field via setter allows successful JSON round-trip
	})

	t.Run("SetEvaluator_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &JobInput{}
		var fernTestValueEvaluator string

		// Act
		obj.SetEvaluator(fernTestValueEvaluator)

		// Assert - object with explicitly set field can be marshaled/unmarshaled
		bytes, err := json.Marshal(obj)
		require.NoError(t, err, "marshaling should succeed for test setup")

		// This test ensures JSON marshaling and unmarshaling succeed when the field has a zero/nil value
		// Detect if marshaled JSON is an object or primitive to use correct unmarshal target
		if len(bytes) > 0 && bytes[0] == '{' {
			// JSON object - unmarshal into map
			var unmarshaled map[string]interface{}
			err = json.Unmarshal(bytes, &unmarshaled)
			require.NoError(t, err, "unmarshaling should succeed for test verification")
		} else {
			// JSON primitive (string, number, boolean, null) - unmarshal into interface{}
			var unmarshaled interface{}
			err = json.Unmarshal(bytes, &unmarshaled)
			require.NoError(t, err, "unmarshaling should succeed for test verification")
		}

		// Note: This does not explicitly assert the presence of a specific JSON field
		// It verifies that setting a field via setter allows successful JSON round-trip
	})

	t.Run("SetRequestID_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &JobInput{}
		var fernTestValueRequestID string

		// Act
		obj.SetRequestID(fernTestValueRequestID)

		// Assert - object with explicitly set field can be marshaled/unmarshaled
		bytes, err := json.Marshal(obj)
		require.NoError(t, err, "marshaling should succeed for test setup")

		// This test ensures JSON marshaling and unmarshaling succeed when the field has a zero/nil value
		// Detect if marshaled JSON is an object or primitive to use correct unmarshal target
		if len(bytes) > 0 && bytes[0] == '{' {
			// JSON object - unmarshal into map
			var unmarshaled map[string]interface{}
			err = json.Unmarshal(bytes, &unmarshaled)
			require.NoError(t, err, "unmarshaling should succeed for test verification")
		} else {
			// JSON primitive (string, number, boolean, null) - unmarshal into interface{}
			var unmarshaled interface{}
			err = json.Unmarshal(bytes, &unmarshaled)
			require.NoError(t, err, "unmarshaling should succeed for test verification")
		}

		// Note: This does not explicitly assert the presence of a specific JSON field
		// It verifies that setting a field via setter allows successful JSON round-trip
	})

	t.Run("SetRevision_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &JobInput{}
		var fernTestValueRevision string

		// Act
		obj.SetRevision(fernTestValueRevision)

		// Assert - object with explicitly set field can be marshaled/unmarshaled
		bytes, err := json.Marshal(obj)
		require.NoError(t, err, "marshaling should succeed for test setup")

		// This test ensures JSON marshaling and unmarshaling succeed when the field has a zero/nil value
		// Detect if marshaled JSON is an object or primitive to use correct unmarshal target
		if len(bytes) > 0 && bytes[0] == '{' {
			// JSON object - unmarshal into map
			var unmarshaled map[string]interface{}
			err = json.Unmarshal(bytes, &unmarshaled)
			require.NoError(t, err, "unmarshaling should succeed for test verification")
		} else {
			// JSON primitive (string, number, boolean, null) - unmarshal into interface{}
			var unmarshaled interface{}
			err = json.Unmarshal(bytes, &unmarshaled)
			require.NoError(t, err, "unmarshaling should succeed for test verification")
		}

		// Note: This does not explicitly assert the presence of a specific JSON field
		// It verifies that setting a field via setter allows successful JSON round-trip
	})

	t.Run("SetRubric_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &JobInput{}
		var fernTestValueRubric string

		// Act
		obj.SetRubric(fernTestValueRubric)

		// Assert - object with explicitly set field can be marshaled/unmarshaled
		bytes, err := json.Marshal(obj)
		require.NoError(t, err, "marshaling should succeed for test setup")

		// This test ensures JSON marshaling and unmarshaling succeed when the field has a zero/nil value
		// Detect if marshaled JSON is an object or primitive to use correct unmarshal target
		if len(bytes) > 0 && bytes[0] == '{' {
			// JSON object - unmarshal into map
			var unmarshaled map[string]interface{}
			err = json.Unmarshal(bytes, &unmarshaled)
			require.NoError(t, err, "unmarshaling should succeed for test verification")
		} else {
			// JSON primitive (string, number, boolean, null) - unmarshal into interface{}
			var unmarshaled interface{}
			err = json.Unmarshal(bytes, &unmarshaled)
			require.NoError(t, err, "unmarshaling should succeed for test verification")
		}

		// Note: This does not explicitly assert the presence of a specific JSON field
		// It verifies that setting a field via setter allows successful JSON round-trip
	})

	t.Run("SetTargets_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &JobInput{}
		var fernTestValueTargets []*TargetInput

		// Act
		obj.SetTargets(fernTestValueTargets)

		// Assert - object with explicitly set field can be marshaled/unmarshaled
		bytes, err := json.Marshal(obj)
		require.NoError(t, err, "marshaling should succeed for test setup")

		// This test ensures JSON marshaling and unmarshaling succeed when the field has a zero/nil value
		// Detect if marshaled JSON is an object or primitive to use correct unmarshal target
		if len(bytes) > 0 && bytes[0] == '{' {
			// JSON object - unmarshal into map
			var unmarshaled map[string]interface{}
			err = json.Unmarshal(bytes, &unmarshaled)
			require.NoError(t, err, "unmarshaling should succeed for test verification")
		} else {
			// JSON primitive (string, number, boolean, null) - unmarshal into interface{}
			var unmarshaled interface{}
			err = json.Unmarshal(bytes, &unmarshaled)
			require.NoError(t, err, "unmarshaling should succeed for test verification")
		}

		// Note: This does not explicitly assert the presence of a specific JSON field
		// It verifies that setting a field via setter allows successful JSON round-trip
	})

}

func TestSettersListJobsEvaluationJobsRequest(t *testing.T) {
	t.Run("SetCursor", func(t *testing.T) {
		obj := &ListJobsEvaluationJobsRequest{}
		var fernTestValueCursor *string
		obj.SetCursor(fernTestValueCursor)
		assert.Equal(t, fernTestValueCursor, obj.Cursor)
		assert.NotNil(t, obj.explicitFields)
	})

}

func TestSettersMarkExplicitListJobsEvaluationJobsRequest(t *testing.T) {
	t.Run("SetCursor_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &ListJobsEvaluationJobsRequest{}
		var fernTestValueCursor *string

		// Act
		obj.SetCursor(fernTestValueCursor)

		// Assert - object with explicitly set field can be marshaled/unmarshaled
		bytes, err := json.Marshal(obj)
		require.NoError(t, err, "marshaling should succeed for test setup")

		// This test ensures JSON marshaling and unmarshaling succeed when the field has a zero/nil value
		// Detect if marshaled JSON is an object or primitive to use correct unmarshal target
		if len(bytes) > 0 && bytes[0] == '{' {
			// JSON object - unmarshal into map
			var unmarshaled map[string]interface{}
			err = json.Unmarshal(bytes, &unmarshaled)
			require.NoError(t, err, "unmarshaling should succeed for test verification")
		} else {
			// JSON primitive (string, number, boolean, null) - unmarshal into interface{}
			var unmarshaled interface{}
			err = json.Unmarshal(bytes, &unmarshaled)
			require.NoError(t, err, "unmarshaling should succeed for test verification")
		}

		// Note: This does not explicitly assert the presence of a specific JSON field
		// It verifies that setting a field via setter allows successful JSON round-trip
	})

}

func TestSettersTargetInput(t *testing.T) {
	t.Run("SetTarget", func(t *testing.T) {
		obj := &TargetInput{}
		var fernTestValueTarget *JudgmentTarget
		obj.SetTarget(fernTestValueTarget)
		assert.Equal(t, fernTestValueTarget, obj.Target)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetTraceID", func(t *testing.T) {
		obj := &TargetInput{}
		var fernTestValueTraceID string
		obj.SetTraceID(fernTestValueTraceID)
		assert.Equal(t, fernTestValueTraceID, obj.TraceID)
		assert.NotNil(t, obj.explicitFields)
	})

}

func TestGettersTargetInput(t *testing.T) {
	t.Run("GetTarget", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TargetInput{}
		var expected *JudgmentTarget
		obj.Target = expected

		// Act & Assert
		assert.Equal(t, expected, obj.GetTarget(), "getter should return the property value")
	})

	t.Run("GetTarget_NilValue", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TargetInput{}
		obj.Target = nil

		// Act & Assert
		assert.Nil(t, obj.GetTarget(), "getter should return nil when property is nil")
	})

	t.Run("GetTarget_NilReceiver", func(t *testing.T) {
		t.Parallel()
		var obj *TargetInput
		// Should not panic - getters should handle nil receiver gracefully
		defer func() {
			if r := recover(); r != nil {
				t.Errorf("Getter panicked on nil receiver: %v", r)
			}
		}()
		_ = obj.GetTarget() // Should return zero value
	})

	t.Run("GetTraceID", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TargetInput{}
		var expected string
		obj.TraceID = expected

		// Act & Assert
		assert.Equal(t, expected, obj.GetTraceID(), "getter should return the property value")
	})

	t.Run("GetTraceID_NilReceiver", func(t *testing.T) {
		t.Parallel()
		var obj *TargetInput
		// Should not panic - getters should handle nil receiver gracefully
		defer func() {
			if r := recover(); r != nil {
				t.Errorf("Getter panicked on nil receiver: %v", r)
			}
		}()
		_ = obj.GetTraceID() // Should return zero value
	})

}

func TestSettersMarkExplicitTargetInput(t *testing.T) {
	t.Run("SetTarget_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TargetInput{}
		var fernTestValueTarget *JudgmentTarget

		// Act
		obj.SetTarget(fernTestValueTarget)

		// Assert - object with explicitly set field can be marshaled/unmarshaled
		bytes, err := json.Marshal(obj)
		require.NoError(t, err, "marshaling should succeed for test setup")

		// This test ensures JSON marshaling and unmarshaling succeed when the field has a zero/nil value
		// Detect if marshaled JSON is an object or primitive to use correct unmarshal target
		if len(bytes) > 0 && bytes[0] == '{' {
			// JSON object - unmarshal into map
			var unmarshaled map[string]interface{}
			err = json.Unmarshal(bytes, &unmarshaled)
			require.NoError(t, err, "unmarshaling should succeed for test verification")
		} else {
			// JSON primitive (string, number, boolean, null) - unmarshal into interface{}
			var unmarshaled interface{}
			err = json.Unmarshal(bytes, &unmarshaled)
			require.NoError(t, err, "unmarshaling should succeed for test verification")
		}

		// Note: This does not explicitly assert the presence of a specific JSON field
		// It verifies that setting a field via setter allows successful JSON round-trip
	})

	t.Run("SetTraceID_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TargetInput{}
		var fernTestValueTraceID string

		// Act
		obj.SetTraceID(fernTestValueTraceID)

		// Assert - object with explicitly set field can be marshaled/unmarshaled
		bytes, err := json.Marshal(obj)
		require.NoError(t, err, "marshaling should succeed for test setup")

		// This test ensures JSON marshaling and unmarshaling succeed when the field has a zero/nil value
		// Detect if marshaled JSON is an object or primitive to use correct unmarshal target
		if len(bytes) > 0 && bytes[0] == '{' {
			// JSON object - unmarshal into map
			var unmarshaled map[string]interface{}
			err = json.Unmarshal(bytes, &unmarshaled)
			require.NoError(t, err, "unmarshaling should succeed for test verification")
		} else {
			// JSON primitive (string, number, boolean, null) - unmarshal into interface{}
			var unmarshaled interface{}
			err = json.Unmarshal(bytes, &unmarshaled)
			require.NoError(t, err, "unmarshaling should succeed for test verification")
		}

		// Note: This does not explicitly assert the presence of a specific JSON field
		// It verifies that setting a field via setter allows successful JSON round-trip
	})

}

func TestJSONMarshalingTargetInput(t *testing.T) {
	t.Run("MarshalUnmarshal", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TargetInput{}

		// Act - Marshal to JSON
		data, err := json.Marshal(obj)
		require.NoError(t, err, "marshaling should succeed")
		assert.NotNil(t, data, "marshaled data should not be nil")
		assert.NotEmpty(t, data, "marshaled data should not be empty")

		// Unmarshal back and verify round-trip
		var unmarshaled TargetInput
		err = json.Unmarshal(data, &unmarshaled)
		assert.NoError(t, err, "round-trip unmarshal should succeed")
	})

	t.Run("UnmarshalInvalidJSON", func(t *testing.T) {
		t.Parallel()
		var obj TargetInput
		err := json.Unmarshal([]byte(`{invalid json}`), &obj)
		assert.Error(t, err, "unmarshaling invalid JSON should return an error")
	})

	t.Run("UnmarshalEmptyObject", func(t *testing.T) {
		t.Parallel()
		var obj TargetInput
		err := json.Unmarshal([]byte(`{}`), &obj)
		assert.NoError(t, err, "unmarshaling empty object should succeed")
	})
}

func TestStringTargetInput(t *testing.T) {
	t.Run("StringMethod", func(t *testing.T) {
		t.Parallel()
		obj := &TargetInput{}
		result := obj.String()
		assert.NotEmpty(t, result, "String() should return a non-empty representation")
	})

	t.Run("StringMethod_NilReceiver", func(t *testing.T) {
		t.Parallel()
		var obj *TargetInput
		result := obj.String()
		assert.Equal(t, "<nil>", result, "String() should return <nil> for nil receiver")
	})
}

func TestEnumJobInputEnvironment(t *testing.T) {
	t.Run("NewFromString_production", func(t *testing.T) {
		t.Parallel()
		val, err := NewJobInputEnvironmentFromString("production")
		assert.NoError(t, err, "valid enum value should not return error")
		assert.Equal(t, JobInputEnvironment("production"), val, "enum value should match expected wire value")
	})

	t.Run("NewFromString_staging", func(t *testing.T) {
		t.Parallel()
		val, err := NewJobInputEnvironmentFromString("staging")
		assert.NoError(t, err, "valid enum value should not return error")
		assert.Equal(t, JobInputEnvironment("staging"), val, "enum value should match expected wire value")
	})

	t.Run("NewFromString_development", func(t *testing.T) {
		t.Parallel()
		val, err := NewJobInputEnvironmentFromString("development")
		assert.NoError(t, err, "valid enum value should not return error")
		assert.Equal(t, JobInputEnvironment("development"), val, "enum value should match expected wire value")
	})

	t.Run("NewFromString_Invalid", func(t *testing.T) {
		_, err := NewJobInputEnvironmentFromString("invalid_value_that_does_not_exist")
		assert.Error(t, err)
	})

	t.Run("Ptr", func(t *testing.T) {
		val, err := NewJobInputEnvironmentFromString("production")
		assert.NoError(t, err)
		ptr := val.Ptr()
		assert.NotNil(t, ptr)
		assert.Equal(t, val, *ptr)
	})
}

func TestExtraPropertiesTargetInput(t *testing.T) {
	t.Run("GetExtraProperties", func(t *testing.T) {
		t.Parallel()
		obj := &TargetInput{}
		// Should not panic when calling GetExtraProperties()
		defer func() {
			if r := recover(); r != nil {
				t.Errorf("GetExtraProperties() panicked: %v", r)
			}
		}()
		extraProps := obj.GetExtraProperties()
		// Result can be nil or an empty/non-empty map
		_ = extraProps
	})

	t.Run("GetExtraProperties_NilReceiver", func(t *testing.T) {
		t.Parallel()
		var obj *TargetInput
		extraProps := obj.GetExtraProperties()
		assert.Nil(t, extraProps, "nil receiver should return nil without panicking")
	})
}
