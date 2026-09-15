
package api

import (
	json "encoding/json"
	assert "github.com/stretchr/testify/assert"
	require "github.com/stretchr/testify/require"
	testing "testing"
)

func TestSettersTraceStreamRequest(t *testing.T) {
	t.Run("SetIdempotencyKey", func(t *testing.T) {
		obj := &TraceStreamRequest{}
		var fernTestValueIdempotencyKey *string
		obj.SetIdempotencyKey(fernTestValueIdempotencyKey)
		assert.Equal(t, fernTestValueIdempotencyKey, obj.IdempotencyKey)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetSikaruClientID", func(t *testing.T) {
		obj := &TraceStreamRequest{}
		var fernTestValueSikaruClientID *string
		obj.SetSikaruClientID(fernTestValueSikaruClientID)
		assert.Equal(t, fernTestValueSikaruClientID, obj.SikaruClientID)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetDataset", func(t *testing.T) {
		obj := &TraceStreamRequest{}
		var fernTestValueDataset *string
		obj.SetDataset(fernTestValueDataset)
		assert.Equal(t, fernTestValueDataset, obj.Dataset)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetFormat", func(t *testing.T) {
		obj := &TraceStreamRequest{}
		var fernTestValueFormat TraceStreamRequestFormat
		obj.SetFormat(fernTestValueFormat)
		assert.Equal(t, fernTestValueFormat, obj.Format)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetMetadata", func(t *testing.T) {
		obj := &TraceStreamRequest{}
		var fernTestValueMetadata *TraceMetadata
		obj.SetMetadata(fernTestValueMetadata)
		assert.Equal(t, fernTestValueMetadata, obj.Metadata)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetResourceSpans", func(t *testing.T) {
		obj := &TraceStreamRequest{}
		var fernTestValueResourceSpans []map[string]any
		obj.SetResourceSpans(fernTestValueResourceSpans)
		assert.Equal(t, fernTestValueResourceSpans, obj.ResourceSpans)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetSpans", func(t *testing.T) {
		obj := &TraceStreamRequest{}
		var fernTestValueSpans []*OpenInferenceSpan
		obj.SetSpans(fernTestValueSpans)
		assert.Equal(t, fernTestValueSpans, obj.Spans)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetTrajectories", func(t *testing.T) {
		obj := &TraceStreamRequest{}
		var fernTestValueTrajectories []map[string]any
		obj.SetTrajectories(fernTestValueTrajectories)
		assert.Equal(t, fernTestValueTrajectories, obj.Trajectories)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetTrajectory", func(t *testing.T) {
		obj := &TraceStreamRequest{}
		var fernTestValueTrajectory map[string]any
		obj.SetTrajectory(fernTestValueTrajectory)
		assert.Equal(t, fernTestValueTrajectory, obj.Trajectory)
		assert.NotNil(t, obj.explicitFields)
	})

}

func TestSettersMarkExplicitTraceStreamRequest(t *testing.T) {
	t.Run("SetIdempotencyKey_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceStreamRequest{}
		var fernTestValueIdempotencyKey *string

		// Act
		obj.SetIdempotencyKey(fernTestValueIdempotencyKey)

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

	t.Run("SetSikaruClientID_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceStreamRequest{}
		var fernTestValueSikaruClientID *string

		// Act
		obj.SetSikaruClientID(fernTestValueSikaruClientID)

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

	t.Run("SetDataset_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceStreamRequest{}
		var fernTestValueDataset *string

		// Act
		obj.SetDataset(fernTestValueDataset)

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

	t.Run("SetFormat_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceStreamRequest{}
		var fernTestValueFormat TraceStreamRequestFormat

		// Act
		obj.SetFormat(fernTestValueFormat)

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

	t.Run("SetMetadata_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceStreamRequest{}
		var fernTestValueMetadata *TraceMetadata

		// Act
		obj.SetMetadata(fernTestValueMetadata)

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

	t.Run("SetResourceSpans_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceStreamRequest{}
		var fernTestValueResourceSpans []map[string]any

		// Act
		obj.SetResourceSpans(fernTestValueResourceSpans)

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

	t.Run("SetSpans_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceStreamRequest{}
		var fernTestValueSpans []*OpenInferenceSpan

		// Act
		obj.SetSpans(fernTestValueSpans)

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

	t.Run("SetTrajectories_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceStreamRequest{}
		var fernTestValueTrajectories []map[string]any

		// Act
		obj.SetTrajectories(fernTestValueTrajectories)

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

	t.Run("SetTrajectory_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceStreamRequest{}
		var fernTestValueTrajectory map[string]any

		// Act
		obj.SetTrajectory(fernTestValueTrajectory)

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

func TestSettersOpenInferenceSpan(t *testing.T) {
	t.Run("SetAttributes", func(t *testing.T) {
		obj := &OpenInferenceSpan{}
		var fernTestValueAttributes map[string]any
		obj.SetAttributes(fernTestValueAttributes)
		assert.Equal(t, fernTestValueAttributes, obj.Attributes)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetEndTime", func(t *testing.T) {
		obj := &OpenInferenceSpan{}
		var fernTestValueEndTime *string
		obj.SetEndTime(fernTestValueEndTime)
		assert.Equal(t, fernTestValueEndTime, obj.EndTime)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetName", func(t *testing.T) {
		obj := &OpenInferenceSpan{}
		var fernTestValueName *string
		obj.SetName(fernTestValueName)
		assert.Equal(t, fernTestValueName, obj.Name)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetOpeninferenceKind", func(t *testing.T) {
		obj := &OpenInferenceSpan{}
		var fernTestValueOpeninferenceKind *string
		obj.SetOpeninferenceKind(fernTestValueOpeninferenceKind)
		assert.Equal(t, fernTestValueOpeninferenceKind, obj.OpeninferenceKind)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetParentSpanID", func(t *testing.T) {
		obj := &OpenInferenceSpan{}
		var fernTestValueParentSpanID *string
		obj.SetParentSpanID(fernTestValueParentSpanID)
		assert.Equal(t, fernTestValueParentSpanID, obj.ParentSpanID)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetRaw", func(t *testing.T) {
		obj := &OpenInferenceSpan{}
		var fernTestValueRaw map[string]any
		obj.SetRaw(fernTestValueRaw)
		assert.Equal(t, fernTestValueRaw, obj.Raw)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetResourceAttributes", func(t *testing.T) {
		obj := &OpenInferenceSpan{}
		var fernTestValueResourceAttributes map[string]any
		obj.SetResourceAttributes(fernTestValueResourceAttributes)
		assert.Equal(t, fernTestValueResourceAttributes, obj.ResourceAttributes)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetSpanID", func(t *testing.T) {
		obj := &OpenInferenceSpan{}
		var fernTestValueSpanID string
		obj.SetSpanID(fernTestValueSpanID)
		assert.Equal(t, fernTestValueSpanID, obj.SpanID)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetStartTime", func(t *testing.T) {
		obj := &OpenInferenceSpan{}
		var fernTestValueStartTime *string
		obj.SetStartTime(fernTestValueStartTime)
		assert.Equal(t, fernTestValueStartTime, obj.StartTime)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetStatusCode", func(t *testing.T) {
		obj := &OpenInferenceSpan{}
		var fernTestValueStatusCode *string
		obj.SetStatusCode(fernTestValueStatusCode)
		assert.Equal(t, fernTestValueStatusCode, obj.StatusCode)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetStatusMessage", func(t *testing.T) {
		obj := &OpenInferenceSpan{}
		var fernTestValueStatusMessage *string
		obj.SetStatusMessage(fernTestValueStatusMessage)
		assert.Equal(t, fernTestValueStatusMessage, obj.StatusMessage)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetTraceID", func(t *testing.T) {
		obj := &OpenInferenceSpan{}
		var fernTestValueTraceID string
		obj.SetTraceID(fernTestValueTraceID)
		assert.Equal(t, fernTestValueTraceID, obj.TraceID)
		assert.NotNil(t, obj.explicitFields)
	})

}

func TestGettersOpenInferenceSpan(t *testing.T) {
	t.Run("GetAttributes", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &OpenInferenceSpan{}
		var expected map[string]any
		obj.Attributes = expected

		// Act & Assert
		assert.Equal(t, expected, obj.GetAttributes(), "getter should return the property value")
	})

	t.Run("GetAttributes_NilValue", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &OpenInferenceSpan{}
		obj.Attributes = nil

		// Act & Assert
		assert.Nil(t, obj.GetAttributes(), "getter should return nil when property is nil")
	})

	t.Run("GetAttributes_NilReceiver", func(t *testing.T) {
		t.Parallel()
		var obj *OpenInferenceSpan
		// Should not panic - getters should handle nil receiver gracefully
		defer func() {
			if r := recover(); r != nil {
				t.Errorf("Getter panicked on nil receiver: %v", r)
			}
		}()
		_ = obj.GetAttributes() // Should return zero value
	})

	t.Run("GetEndTime", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &OpenInferenceSpan{}
		var expected *string
		obj.EndTime = expected

		// Act & Assert
		assert.Equal(t, expected, obj.GetEndTime(), "getter should return the property value")
	})

	t.Run("GetEndTime_NilValue", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &OpenInferenceSpan{}
		obj.EndTime = nil

		// Act & Assert
		assert.Nil(t, obj.GetEndTime(), "getter should return nil when property is nil")
	})

	t.Run("GetEndTime_NilReceiver", func(t *testing.T) {
		t.Parallel()
		var obj *OpenInferenceSpan
		// Should not panic - getters should handle nil receiver gracefully
		defer func() {
			if r := recover(); r != nil {
				t.Errorf("Getter panicked on nil receiver: %v", r)
			}
		}()
		_ = obj.GetEndTime() // Should return zero value
	})

	t.Run("GetName", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &OpenInferenceSpan{}
		var expected *string
		obj.Name = expected

		// Act & Assert
		assert.Equal(t, expected, obj.GetName(), "getter should return the property value")
	})

	t.Run("GetName_NilValue", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &OpenInferenceSpan{}
		obj.Name = nil

		// Act & Assert
		assert.Nil(t, obj.GetName(), "getter should return nil when property is nil")
	})

	t.Run("GetName_NilReceiver", func(t *testing.T) {
		t.Parallel()
		var obj *OpenInferenceSpan
		// Should not panic - getters should handle nil receiver gracefully
		defer func() {
			if r := recover(); r != nil {
				t.Errorf("Getter panicked on nil receiver: %v", r)
			}
		}()
		_ = obj.GetName() // Should return zero value
	})

	t.Run("GetOpeninferenceKind", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &OpenInferenceSpan{}
		var expected *string
		obj.OpeninferenceKind = expected

		// Act & Assert
		assert.Equal(t, expected, obj.GetOpeninferenceKind(), "getter should return the property value")
	})

	t.Run("GetOpeninferenceKind_NilValue", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &OpenInferenceSpan{}
		obj.OpeninferenceKind = nil

		// Act & Assert
		assert.Nil(t, obj.GetOpeninferenceKind(), "getter should return nil when property is nil")
	})

	t.Run("GetOpeninferenceKind_NilReceiver", func(t *testing.T) {
		t.Parallel()
		var obj *OpenInferenceSpan
		// Should not panic - getters should handle nil receiver gracefully
		defer func() {
			if r := recover(); r != nil {
				t.Errorf("Getter panicked on nil receiver: %v", r)
			}
		}()
		_ = obj.GetOpeninferenceKind() // Should return zero value
	})

	t.Run("GetParentSpanID", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &OpenInferenceSpan{}
		var expected *string
		obj.ParentSpanID = expected

		// Act & Assert
		assert.Equal(t, expected, obj.GetParentSpanID(), "getter should return the property value")
	})

	t.Run("GetParentSpanID_NilValue", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &OpenInferenceSpan{}
		obj.ParentSpanID = nil

		// Act & Assert
		assert.Nil(t, obj.GetParentSpanID(), "getter should return nil when property is nil")
	})

	t.Run("GetParentSpanID_NilReceiver", func(t *testing.T) {
		t.Parallel()
		var obj *OpenInferenceSpan
		// Should not panic - getters should handle nil receiver gracefully
		defer func() {
			if r := recover(); r != nil {
				t.Errorf("Getter panicked on nil receiver: %v", r)
			}
		}()
		_ = obj.GetParentSpanID() // Should return zero value
	})

	t.Run("GetRaw", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &OpenInferenceSpan{}
		var expected map[string]any
		obj.Raw = expected

		// Act & Assert
		assert.Equal(t, expected, obj.GetRaw(), "getter should return the property value")
	})

	t.Run("GetRaw_NilValue", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &OpenInferenceSpan{}
		obj.Raw = nil

		// Act & Assert
		assert.Nil(t, obj.GetRaw(), "getter should return nil when property is nil")
	})

	t.Run("GetRaw_NilReceiver", func(t *testing.T) {
		t.Parallel()
		var obj *OpenInferenceSpan
		// Should not panic - getters should handle nil receiver gracefully
		defer func() {
			if r := recover(); r != nil {
				t.Errorf("Getter panicked on nil receiver: %v", r)
			}
		}()
		_ = obj.GetRaw() // Should return zero value
	})

	t.Run("GetResourceAttributes", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &OpenInferenceSpan{}
		var expected map[string]any
		obj.ResourceAttributes = expected

		// Act & Assert
		assert.Equal(t, expected, obj.GetResourceAttributes(), "getter should return the property value")
	})

	t.Run("GetResourceAttributes_NilValue", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &OpenInferenceSpan{}
		obj.ResourceAttributes = nil

		// Act & Assert
		assert.Nil(t, obj.GetResourceAttributes(), "getter should return nil when property is nil")
	})

	t.Run("GetResourceAttributes_NilReceiver", func(t *testing.T) {
		t.Parallel()
		var obj *OpenInferenceSpan
		// Should not panic - getters should handle nil receiver gracefully
		defer func() {
			if r := recover(); r != nil {
				t.Errorf("Getter panicked on nil receiver: %v", r)
			}
		}()
		_ = obj.GetResourceAttributes() // Should return zero value
	})

	t.Run("GetSpanID", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &OpenInferenceSpan{}
		var expected string
		obj.SpanID = expected

		// Act & Assert
		assert.Equal(t, expected, obj.GetSpanID(), "getter should return the property value")
	})

	t.Run("GetSpanID_NilReceiver", func(t *testing.T) {
		t.Parallel()
		var obj *OpenInferenceSpan
		// Should not panic - getters should handle nil receiver gracefully
		defer func() {
			if r := recover(); r != nil {
				t.Errorf("Getter panicked on nil receiver: %v", r)
			}
		}()
		_ = obj.GetSpanID() // Should return zero value
	})

	t.Run("GetStartTime", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &OpenInferenceSpan{}
		var expected *string
		obj.StartTime = expected

		// Act & Assert
		assert.Equal(t, expected, obj.GetStartTime(), "getter should return the property value")
	})

	t.Run("GetStartTime_NilValue", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &OpenInferenceSpan{}
		obj.StartTime = nil

		// Act & Assert
		assert.Nil(t, obj.GetStartTime(), "getter should return nil when property is nil")
	})

	t.Run("GetStartTime_NilReceiver", func(t *testing.T) {
		t.Parallel()
		var obj *OpenInferenceSpan
		// Should not panic - getters should handle nil receiver gracefully
		defer func() {
			if r := recover(); r != nil {
				t.Errorf("Getter panicked on nil receiver: %v", r)
			}
		}()
		_ = obj.GetStartTime() // Should return zero value
	})

	t.Run("GetStatusCode", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &OpenInferenceSpan{}
		var expected *string
		obj.StatusCode = expected

		// Act & Assert
		assert.Equal(t, expected, obj.GetStatusCode(), "getter should return the property value")
	})

	t.Run("GetStatusCode_NilValue", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &OpenInferenceSpan{}
		obj.StatusCode = nil

		// Act & Assert
		assert.Nil(t, obj.GetStatusCode(), "getter should return nil when property is nil")
	})

	t.Run("GetStatusCode_NilReceiver", func(t *testing.T) {
		t.Parallel()
		var obj *OpenInferenceSpan
		// Should not panic - getters should handle nil receiver gracefully
		defer func() {
			if r := recover(); r != nil {
				t.Errorf("Getter panicked on nil receiver: %v", r)
			}
		}()
		_ = obj.GetStatusCode() // Should return zero value
	})

	t.Run("GetStatusMessage", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &OpenInferenceSpan{}
		var expected *string
		obj.StatusMessage = expected

		// Act & Assert
		assert.Equal(t, expected, obj.GetStatusMessage(), "getter should return the property value")
	})

	t.Run("GetStatusMessage_NilValue", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &OpenInferenceSpan{}
		obj.StatusMessage = nil

		// Act & Assert
		assert.Nil(t, obj.GetStatusMessage(), "getter should return nil when property is nil")
	})

	t.Run("GetStatusMessage_NilReceiver", func(t *testing.T) {
		t.Parallel()
		var obj *OpenInferenceSpan
		// Should not panic - getters should handle nil receiver gracefully
		defer func() {
			if r := recover(); r != nil {
				t.Errorf("Getter panicked on nil receiver: %v", r)
			}
		}()
		_ = obj.GetStatusMessage() // Should return zero value
	})

	t.Run("GetTraceID", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &OpenInferenceSpan{}
		var expected string
		obj.TraceID = expected

		// Act & Assert
		assert.Equal(t, expected, obj.GetTraceID(), "getter should return the property value")
	})

	t.Run("GetTraceID_NilReceiver", func(t *testing.T) {
		t.Parallel()
		var obj *OpenInferenceSpan
		// Should not panic - getters should handle nil receiver gracefully
		defer func() {
			if r := recover(); r != nil {
				t.Errorf("Getter panicked on nil receiver: %v", r)
			}
		}()
		_ = obj.GetTraceID() // Should return zero value
	})

}

func TestSettersMarkExplicitOpenInferenceSpan(t *testing.T) {
	t.Run("SetAttributes_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &OpenInferenceSpan{}
		var fernTestValueAttributes map[string]any

		// Act
		obj.SetAttributes(fernTestValueAttributes)

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

	t.Run("SetEndTime_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &OpenInferenceSpan{}
		var fernTestValueEndTime *string

		// Act
		obj.SetEndTime(fernTestValueEndTime)

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

	t.Run("SetName_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &OpenInferenceSpan{}
		var fernTestValueName *string

		// Act
		obj.SetName(fernTestValueName)

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

	t.Run("SetOpeninferenceKind_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &OpenInferenceSpan{}
		var fernTestValueOpeninferenceKind *string

		// Act
		obj.SetOpeninferenceKind(fernTestValueOpeninferenceKind)

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

	t.Run("SetParentSpanID_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &OpenInferenceSpan{}
		var fernTestValueParentSpanID *string

		// Act
		obj.SetParentSpanID(fernTestValueParentSpanID)

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

	t.Run("SetRaw_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &OpenInferenceSpan{}
		var fernTestValueRaw map[string]any

		// Act
		obj.SetRaw(fernTestValueRaw)

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

	t.Run("SetResourceAttributes_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &OpenInferenceSpan{}
		var fernTestValueResourceAttributes map[string]any

		// Act
		obj.SetResourceAttributes(fernTestValueResourceAttributes)

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

	t.Run("SetSpanID_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &OpenInferenceSpan{}
		var fernTestValueSpanID string

		// Act
		obj.SetSpanID(fernTestValueSpanID)

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

	t.Run("SetStartTime_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &OpenInferenceSpan{}
		var fernTestValueStartTime *string

		// Act
		obj.SetStartTime(fernTestValueStartTime)

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

	t.Run("SetStatusCode_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &OpenInferenceSpan{}
		var fernTestValueStatusCode *string

		// Act
		obj.SetStatusCode(fernTestValueStatusCode)

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

	t.Run("SetStatusMessage_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &OpenInferenceSpan{}
		var fernTestValueStatusMessage *string

		// Act
		obj.SetStatusMessage(fernTestValueStatusMessage)

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
		obj := &OpenInferenceSpan{}
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

func TestSettersTraceMetadata(t *testing.T) {
	t.Run("SetAccountID", func(t *testing.T) {
		obj := &TraceMetadata{}
		var fernTestValueAccountID string
		obj.SetAccountID(fernTestValueAccountID)
		assert.Equal(t, fernTestValueAccountID, obj.AccountID)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetBaseHarnessVersionID", func(t *testing.T) {
		obj := &TraceMetadata{}
		var fernTestValueBaseHarnessVersionID *string
		obj.SetBaseHarnessVersionID(fernTestValueBaseHarnessVersionID)
		assert.Equal(t, fernTestValueBaseHarnessVersionID, obj.BaseHarnessVersionID)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetCompatibilityProfileID", func(t *testing.T) {
		obj := &TraceMetadata{}
		var fernTestValueCompatibilityProfileID *string
		obj.SetCompatibilityProfileID(fernTestValueCompatibilityProfileID)
		assert.Equal(t, fernTestValueCompatibilityProfileID, obj.CompatibilityProfileID)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetConversationID", func(t *testing.T) {
		obj := &TraceMetadata{}
		var fernTestValueConversationID *string
		obj.SetConversationID(fernTestValueConversationID)
		assert.Equal(t, fernTestValueConversationID, obj.ConversationID)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetConverterVersion", func(t *testing.T) {
		obj := &TraceMetadata{}
		var fernTestValueConverterVersion *string
		obj.SetConverterVersion(fernTestValueConverterVersion)
		assert.Equal(t, fernTestValueConverterVersion, obj.ConverterVersion)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetCorrelationID", func(t *testing.T) {
		obj := &TraceMetadata{}
		var fernTestValueCorrelationID *string
		obj.SetCorrelationID(fernTestValueCorrelationID)
		assert.Equal(t, fernTestValueCorrelationID, obj.CorrelationID)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetHarnessID", func(t *testing.T) {
		obj := &TraceMetadata{}
		var fernTestValueHarnessID *string
		obj.SetHarnessID(fernTestValueHarnessID)
		assert.Equal(t, fernTestValueHarnessID, obj.HarnessID)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetHarnessVersionID", func(t *testing.T) {
		obj := &TraceMetadata{}
		var fernTestValueHarnessVersionID *string
		obj.SetHarnessVersionID(fernTestValueHarnessVersionID)
		assert.Equal(t, fernTestValueHarnessVersionID, obj.HarnessVersionID)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetImportGenerationID", func(t *testing.T) {
		obj := &TraceMetadata{}
		var fernTestValueImportGenerationID *string
		obj.SetImportGenerationID(fernTestValueImportGenerationID)
		assert.Equal(t, fernTestValueImportGenerationID, obj.ImportGenerationID)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetJobID", func(t *testing.T) {
		obj := &TraceMetadata{}
		var fernTestValueJobID *string
		obj.SetJobID(fernTestValueJobID)
		assert.Equal(t, fernTestValueJobID, obj.JobID)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetOrganizationID", func(t *testing.T) {
		obj := &TraceMetadata{}
		var fernTestValueOrganizationID *string
		obj.SetOrganizationID(fernTestValueOrganizationID)
		assert.Equal(t, fernTestValueOrganizationID, obj.OrganizationID)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetProductID", func(t *testing.T) {
		obj := &TraceMetadata{}
		var fernTestValueProductID *string
		obj.SetProductID(fernTestValueProductID)
		assert.Equal(t, fernTestValueProductID, obj.ProductID)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetProjectID", func(t *testing.T) {
		obj := &TraceMetadata{}
		var fernTestValueProjectID string
		obj.SetProjectID(fernTestValueProjectID)
		assert.Equal(t, fernTestValueProjectID, obj.ProjectID)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetSource", func(t *testing.T) {
		obj := &TraceMetadata{}
		var fernTestValueSource string
		obj.SetSource(fernTestValueSource)
		assert.Equal(t, fernTestValueSource, obj.Source)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetSourceInstance", func(t *testing.T) {
		obj := &TraceMetadata{}
		var fernTestValueSourceInstance *string
		obj.SetSourceInstance(fernTestValueSourceInstance)
		assert.Equal(t, fernTestValueSourceInstance, obj.SourceInstance)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetTenantID", func(t *testing.T) {
		obj := &TraceMetadata{}
		var fernTestValueTenantID *string
		obj.SetTenantID(fernTestValueTenantID)
		assert.Equal(t, fernTestValueTenantID, obj.TenantID)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetTraceID", func(t *testing.T) {
		obj := &TraceMetadata{}
		var fernTestValueTraceID *string
		obj.SetTraceID(fernTestValueTraceID)
		assert.Equal(t, fernTestValueTraceID, obj.TraceID)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetUserID", func(t *testing.T) {
		obj := &TraceMetadata{}
		var fernTestValueUserID *string
		obj.SetUserID(fernTestValueUserID)
		assert.Equal(t, fernTestValueUserID, obj.UserID)
		assert.NotNil(t, obj.explicitFields)
	})

}

func TestGettersTraceMetadata(t *testing.T) {
	t.Run("GetAccountID", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceMetadata{}
		var expected string
		obj.AccountID = expected

		// Act & Assert
		assert.Equal(t, expected, obj.GetAccountID(), "getter should return the property value")
	})

	t.Run("GetAccountID_NilReceiver", func(t *testing.T) {
		t.Parallel()
		var obj *TraceMetadata
		// Should not panic - getters should handle nil receiver gracefully
		defer func() {
			if r := recover(); r != nil {
				t.Errorf("Getter panicked on nil receiver: %v", r)
			}
		}()
		_ = obj.GetAccountID() // Should return zero value
	})

	t.Run("GetBaseHarnessVersionID", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceMetadata{}
		var expected *string
		obj.BaseHarnessVersionID = expected

		// Act & Assert
		assert.Equal(t, expected, obj.GetBaseHarnessVersionID(), "getter should return the property value")
	})

	t.Run("GetBaseHarnessVersionID_NilValue", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceMetadata{}
		obj.BaseHarnessVersionID = nil

		// Act & Assert
		assert.Nil(t, obj.GetBaseHarnessVersionID(), "getter should return nil when property is nil")
	})

	t.Run("GetBaseHarnessVersionID_NilReceiver", func(t *testing.T) {
		t.Parallel()
		var obj *TraceMetadata
		// Should not panic - getters should handle nil receiver gracefully
		defer func() {
			if r := recover(); r != nil {
				t.Errorf("Getter panicked on nil receiver: %v", r)
			}
		}()
		_ = obj.GetBaseHarnessVersionID() // Should return zero value
	})

	t.Run("GetCompatibilityProfileID", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceMetadata{}
		var expected *string
		obj.CompatibilityProfileID = expected

		// Act & Assert
		assert.Equal(t, expected, obj.GetCompatibilityProfileID(), "getter should return the property value")
	})

	t.Run("GetCompatibilityProfileID_NilValue", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceMetadata{}
		obj.CompatibilityProfileID = nil

		// Act & Assert
		assert.Nil(t, obj.GetCompatibilityProfileID(), "getter should return nil when property is nil")
	})

	t.Run("GetCompatibilityProfileID_NilReceiver", func(t *testing.T) {
		t.Parallel()
		var obj *TraceMetadata
		// Should not panic - getters should handle nil receiver gracefully
		defer func() {
			if r := recover(); r != nil {
				t.Errorf("Getter panicked on nil receiver: %v", r)
			}
		}()
		_ = obj.GetCompatibilityProfileID() // Should return zero value
	})

	t.Run("GetConversationID", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceMetadata{}
		var expected *string
		obj.ConversationID = expected

		// Act & Assert
		assert.Equal(t, expected, obj.GetConversationID(), "getter should return the property value")
	})

	t.Run("GetConversationID_NilValue", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceMetadata{}
		obj.ConversationID = nil

		// Act & Assert
		assert.Nil(t, obj.GetConversationID(), "getter should return nil when property is nil")
	})

	t.Run("GetConversationID_NilReceiver", func(t *testing.T) {
		t.Parallel()
		var obj *TraceMetadata
		// Should not panic - getters should handle nil receiver gracefully
		defer func() {
			if r := recover(); r != nil {
				t.Errorf("Getter panicked on nil receiver: %v", r)
			}
		}()
		_ = obj.GetConversationID() // Should return zero value
	})

	t.Run("GetConverterVersion", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceMetadata{}
		var expected *string
		obj.ConverterVersion = expected

		// Act & Assert
		assert.Equal(t, expected, obj.GetConverterVersion(), "getter should return the property value")
	})

	t.Run("GetConverterVersion_NilValue", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceMetadata{}
		obj.ConverterVersion = nil

		// Act & Assert
		assert.Nil(t, obj.GetConverterVersion(), "getter should return nil when property is nil")
	})

	t.Run("GetConverterVersion_NilReceiver", func(t *testing.T) {
		t.Parallel()
		var obj *TraceMetadata
		// Should not panic - getters should handle nil receiver gracefully
		defer func() {
			if r := recover(); r != nil {
				t.Errorf("Getter panicked on nil receiver: %v", r)
			}
		}()
		_ = obj.GetConverterVersion() // Should return zero value
	})

	t.Run("GetCorrelationID", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceMetadata{}
		var expected *string
		obj.CorrelationID = expected

		// Act & Assert
		assert.Equal(t, expected, obj.GetCorrelationID(), "getter should return the property value")
	})

	t.Run("GetCorrelationID_NilValue", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceMetadata{}
		obj.CorrelationID = nil

		// Act & Assert
		assert.Nil(t, obj.GetCorrelationID(), "getter should return nil when property is nil")
	})

	t.Run("GetCorrelationID_NilReceiver", func(t *testing.T) {
		t.Parallel()
		var obj *TraceMetadata
		// Should not panic - getters should handle nil receiver gracefully
		defer func() {
			if r := recover(); r != nil {
				t.Errorf("Getter panicked on nil receiver: %v", r)
			}
		}()
		_ = obj.GetCorrelationID() // Should return zero value
	})

	t.Run("GetHarnessID", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceMetadata{}
		var expected *string
		obj.HarnessID = expected

		// Act & Assert
		assert.Equal(t, expected, obj.GetHarnessID(), "getter should return the property value")
	})

	t.Run("GetHarnessID_NilValue", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceMetadata{}
		obj.HarnessID = nil

		// Act & Assert
		assert.Nil(t, obj.GetHarnessID(), "getter should return nil when property is nil")
	})

	t.Run("GetHarnessID_NilReceiver", func(t *testing.T) {
		t.Parallel()
		var obj *TraceMetadata
		// Should not panic - getters should handle nil receiver gracefully
		defer func() {
			if r := recover(); r != nil {
				t.Errorf("Getter panicked on nil receiver: %v", r)
			}
		}()
		_ = obj.GetHarnessID() // Should return zero value
	})

	t.Run("GetHarnessVersionID", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceMetadata{}
		var expected *string
		obj.HarnessVersionID = expected

		// Act & Assert
		assert.Equal(t, expected, obj.GetHarnessVersionID(), "getter should return the property value")
	})

	t.Run("GetHarnessVersionID_NilValue", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceMetadata{}
		obj.HarnessVersionID = nil

		// Act & Assert
		assert.Nil(t, obj.GetHarnessVersionID(), "getter should return nil when property is nil")
	})

	t.Run("GetHarnessVersionID_NilReceiver", func(t *testing.T) {
		t.Parallel()
		var obj *TraceMetadata
		// Should not panic - getters should handle nil receiver gracefully
		defer func() {
			if r := recover(); r != nil {
				t.Errorf("Getter panicked on nil receiver: %v", r)
			}
		}()
		_ = obj.GetHarnessVersionID() // Should return zero value
	})

	t.Run("GetImportGenerationID", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceMetadata{}
		var expected *string
		obj.ImportGenerationID = expected

		// Act & Assert
		assert.Equal(t, expected, obj.GetImportGenerationID(), "getter should return the property value")
	})

	t.Run("GetImportGenerationID_NilValue", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceMetadata{}
		obj.ImportGenerationID = nil

		// Act & Assert
		assert.Nil(t, obj.GetImportGenerationID(), "getter should return nil when property is nil")
	})

	t.Run("GetImportGenerationID_NilReceiver", func(t *testing.T) {
		t.Parallel()
		var obj *TraceMetadata
		// Should not panic - getters should handle nil receiver gracefully
		defer func() {
			if r := recover(); r != nil {
				t.Errorf("Getter panicked on nil receiver: %v", r)
			}
		}()
		_ = obj.GetImportGenerationID() // Should return zero value
	})

	t.Run("GetJobID", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceMetadata{}
		var expected *string
		obj.JobID = expected

		// Act & Assert
		assert.Equal(t, expected, obj.GetJobID(), "getter should return the property value")
	})

	t.Run("GetJobID_NilValue", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceMetadata{}
		obj.JobID = nil

		// Act & Assert
		assert.Nil(t, obj.GetJobID(), "getter should return nil when property is nil")
	})

	t.Run("GetJobID_NilReceiver", func(t *testing.T) {
		t.Parallel()
		var obj *TraceMetadata
		// Should not panic - getters should handle nil receiver gracefully
		defer func() {
			if r := recover(); r != nil {
				t.Errorf("Getter panicked on nil receiver: %v", r)
			}
		}()
		_ = obj.GetJobID() // Should return zero value
	})

	t.Run("GetOrganizationID", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceMetadata{}
		var expected *string
		obj.OrganizationID = expected

		// Act & Assert
		assert.Equal(t, expected, obj.GetOrganizationID(), "getter should return the property value")
	})

	t.Run("GetOrganizationID_NilValue", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceMetadata{}
		obj.OrganizationID = nil

		// Act & Assert
		assert.Nil(t, obj.GetOrganizationID(), "getter should return nil when property is nil")
	})

	t.Run("GetOrganizationID_NilReceiver", func(t *testing.T) {
		t.Parallel()
		var obj *TraceMetadata
		// Should not panic - getters should handle nil receiver gracefully
		defer func() {
			if r := recover(); r != nil {
				t.Errorf("Getter panicked on nil receiver: %v", r)
			}
		}()
		_ = obj.GetOrganizationID() // Should return zero value
	})

	t.Run("GetProductID", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceMetadata{}
		var expected *string
		obj.ProductID = expected

		// Act & Assert
		assert.Equal(t, expected, obj.GetProductID(), "getter should return the property value")
	})

	t.Run("GetProductID_NilValue", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceMetadata{}
		obj.ProductID = nil

		// Act & Assert
		assert.Nil(t, obj.GetProductID(), "getter should return nil when property is nil")
	})

	t.Run("GetProductID_NilReceiver", func(t *testing.T) {
		t.Parallel()
		var obj *TraceMetadata
		// Should not panic - getters should handle nil receiver gracefully
		defer func() {
			if r := recover(); r != nil {
				t.Errorf("Getter panicked on nil receiver: %v", r)
			}
		}()
		_ = obj.GetProductID() // Should return zero value
	})

	t.Run("GetProjectID", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceMetadata{}
		var expected string
		obj.ProjectID = expected

		// Act & Assert
		assert.Equal(t, expected, obj.GetProjectID(), "getter should return the property value")
	})

	t.Run("GetProjectID_NilReceiver", func(t *testing.T) {
		t.Parallel()
		var obj *TraceMetadata
		// Should not panic - getters should handle nil receiver gracefully
		defer func() {
			if r := recover(); r != nil {
				t.Errorf("Getter panicked on nil receiver: %v", r)
			}
		}()
		_ = obj.GetProjectID() // Should return zero value
	})

	t.Run("GetSource", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceMetadata{}
		var expected string
		obj.Source = expected

		// Act & Assert
		assert.Equal(t, expected, obj.GetSource(), "getter should return the property value")
	})

	t.Run("GetSource_NilReceiver", func(t *testing.T) {
		t.Parallel()
		var obj *TraceMetadata
		// Should not panic - getters should handle nil receiver gracefully
		defer func() {
			if r := recover(); r != nil {
				t.Errorf("Getter panicked on nil receiver: %v", r)
			}
		}()
		_ = obj.GetSource() // Should return zero value
	})

	t.Run("GetSourceInstance", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceMetadata{}
		var expected *string
		obj.SourceInstance = expected

		// Act & Assert
		assert.Equal(t, expected, obj.GetSourceInstance(), "getter should return the property value")
	})

	t.Run("GetSourceInstance_NilValue", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceMetadata{}
		obj.SourceInstance = nil

		// Act & Assert
		assert.Nil(t, obj.GetSourceInstance(), "getter should return nil when property is nil")
	})

	t.Run("GetSourceInstance_NilReceiver", func(t *testing.T) {
		t.Parallel()
		var obj *TraceMetadata
		// Should not panic - getters should handle nil receiver gracefully
		defer func() {
			if r := recover(); r != nil {
				t.Errorf("Getter panicked on nil receiver: %v", r)
			}
		}()
		_ = obj.GetSourceInstance() // Should return zero value
	})

	t.Run("GetTenantID", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceMetadata{}
		var expected *string
		obj.TenantID = expected

		// Act & Assert
		assert.Equal(t, expected, obj.GetTenantID(), "getter should return the property value")
	})

	t.Run("GetTenantID_NilValue", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceMetadata{}
		obj.TenantID = nil

		// Act & Assert
		assert.Nil(t, obj.GetTenantID(), "getter should return nil when property is nil")
	})

	t.Run("GetTenantID_NilReceiver", func(t *testing.T) {
		t.Parallel()
		var obj *TraceMetadata
		// Should not panic - getters should handle nil receiver gracefully
		defer func() {
			if r := recover(); r != nil {
				t.Errorf("Getter panicked on nil receiver: %v", r)
			}
		}()
		_ = obj.GetTenantID() // Should return zero value
	})

	t.Run("GetTraceID", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceMetadata{}
		var expected *string
		obj.TraceID = expected

		// Act & Assert
		assert.Equal(t, expected, obj.GetTraceID(), "getter should return the property value")
	})

	t.Run("GetTraceID_NilValue", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceMetadata{}
		obj.TraceID = nil

		// Act & Assert
		assert.Nil(t, obj.GetTraceID(), "getter should return nil when property is nil")
	})

	t.Run("GetTraceID_NilReceiver", func(t *testing.T) {
		t.Parallel()
		var obj *TraceMetadata
		// Should not panic - getters should handle nil receiver gracefully
		defer func() {
			if r := recover(); r != nil {
				t.Errorf("Getter panicked on nil receiver: %v", r)
			}
		}()
		_ = obj.GetTraceID() // Should return zero value
	})

	t.Run("GetUserID", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceMetadata{}
		var expected *string
		obj.UserID = expected

		// Act & Assert
		assert.Equal(t, expected, obj.GetUserID(), "getter should return the property value")
	})

	t.Run("GetUserID_NilValue", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceMetadata{}
		obj.UserID = nil

		// Act & Assert
		assert.Nil(t, obj.GetUserID(), "getter should return nil when property is nil")
	})

	t.Run("GetUserID_NilReceiver", func(t *testing.T) {
		t.Parallel()
		var obj *TraceMetadata
		// Should not panic - getters should handle nil receiver gracefully
		defer func() {
			if r := recover(); r != nil {
				t.Errorf("Getter panicked on nil receiver: %v", r)
			}
		}()
		_ = obj.GetUserID() // Should return zero value
	})

}

func TestSettersMarkExplicitTraceMetadata(t *testing.T) {
	t.Run("SetAccountID_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceMetadata{}
		var fernTestValueAccountID string

		// Act
		obj.SetAccountID(fernTestValueAccountID)

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

	t.Run("SetBaseHarnessVersionID_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceMetadata{}
		var fernTestValueBaseHarnessVersionID *string

		// Act
		obj.SetBaseHarnessVersionID(fernTestValueBaseHarnessVersionID)

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

	t.Run("SetCompatibilityProfileID_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceMetadata{}
		var fernTestValueCompatibilityProfileID *string

		// Act
		obj.SetCompatibilityProfileID(fernTestValueCompatibilityProfileID)

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

	t.Run("SetConversationID_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceMetadata{}
		var fernTestValueConversationID *string

		// Act
		obj.SetConversationID(fernTestValueConversationID)

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

	t.Run("SetConverterVersion_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceMetadata{}
		var fernTestValueConverterVersion *string

		// Act
		obj.SetConverterVersion(fernTestValueConverterVersion)

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

	t.Run("SetCorrelationID_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceMetadata{}
		var fernTestValueCorrelationID *string

		// Act
		obj.SetCorrelationID(fernTestValueCorrelationID)

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

	t.Run("SetHarnessID_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceMetadata{}
		var fernTestValueHarnessID *string

		// Act
		obj.SetHarnessID(fernTestValueHarnessID)

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

	t.Run("SetHarnessVersionID_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceMetadata{}
		var fernTestValueHarnessVersionID *string

		// Act
		obj.SetHarnessVersionID(fernTestValueHarnessVersionID)

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

	t.Run("SetImportGenerationID_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceMetadata{}
		var fernTestValueImportGenerationID *string

		// Act
		obj.SetImportGenerationID(fernTestValueImportGenerationID)

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

	t.Run("SetJobID_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceMetadata{}
		var fernTestValueJobID *string

		// Act
		obj.SetJobID(fernTestValueJobID)

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

	t.Run("SetOrganizationID_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceMetadata{}
		var fernTestValueOrganizationID *string

		// Act
		obj.SetOrganizationID(fernTestValueOrganizationID)

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

	t.Run("SetProductID_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceMetadata{}
		var fernTestValueProductID *string

		// Act
		obj.SetProductID(fernTestValueProductID)

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

	t.Run("SetProjectID_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceMetadata{}
		var fernTestValueProjectID string

		// Act
		obj.SetProjectID(fernTestValueProjectID)

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

	t.Run("SetSource_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceMetadata{}
		var fernTestValueSource string

		// Act
		obj.SetSource(fernTestValueSource)

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

	t.Run("SetSourceInstance_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceMetadata{}
		var fernTestValueSourceInstance *string

		// Act
		obj.SetSourceInstance(fernTestValueSourceInstance)

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

	t.Run("SetTenantID_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceMetadata{}
		var fernTestValueTenantID *string

		// Act
		obj.SetTenantID(fernTestValueTenantID)

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
		obj := &TraceMetadata{}
		var fernTestValueTraceID *string

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

	t.Run("SetUserID_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceMetadata{}
		var fernTestValueUserID *string

		// Act
		obj.SetUserID(fernTestValueUserID)

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

func TestJSONMarshalingOpenInferenceSpan(t *testing.T) {
	t.Run("MarshalUnmarshal", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &OpenInferenceSpan{}

		// Act - Marshal to JSON
		data, err := json.Marshal(obj)
		require.NoError(t, err, "marshaling should succeed")
		assert.NotNil(t, data, "marshaled data should not be nil")
		assert.NotEmpty(t, data, "marshaled data should not be empty")

		// Unmarshal back and verify round-trip
		var unmarshaled OpenInferenceSpan
		err = json.Unmarshal(data, &unmarshaled)
		assert.NoError(t, err, "round-trip unmarshal should succeed")
	})

	t.Run("UnmarshalInvalidJSON", func(t *testing.T) {
		t.Parallel()
		var obj OpenInferenceSpan
		err := json.Unmarshal([]byte(`{invalid json}`), &obj)
		assert.Error(t, err, "unmarshaling invalid JSON should return an error")
	})

	t.Run("UnmarshalEmptyObject", func(t *testing.T) {
		t.Parallel()
		var obj OpenInferenceSpan
		err := json.Unmarshal([]byte(`{}`), &obj)
		assert.NoError(t, err, "unmarshaling empty object should succeed")
	})
}

func TestJSONMarshalingTraceMetadata(t *testing.T) {
	t.Run("MarshalUnmarshal", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceMetadata{}

		// Act - Marshal to JSON
		data, err := json.Marshal(obj)
		require.NoError(t, err, "marshaling should succeed")
		assert.NotNil(t, data, "marshaled data should not be nil")
		assert.NotEmpty(t, data, "marshaled data should not be empty")

		// Unmarshal back and verify round-trip
		var unmarshaled TraceMetadata
		err = json.Unmarshal(data, &unmarshaled)
		assert.NoError(t, err, "round-trip unmarshal should succeed")
	})

	t.Run("UnmarshalInvalidJSON", func(t *testing.T) {
		t.Parallel()
		var obj TraceMetadata
		err := json.Unmarshal([]byte(`{invalid json}`), &obj)
		assert.Error(t, err, "unmarshaling invalid JSON should return an error")
	})

	t.Run("UnmarshalEmptyObject", func(t *testing.T) {
		t.Parallel()
		var obj TraceMetadata
		err := json.Unmarshal([]byte(`{}`), &obj)
		assert.NoError(t, err, "unmarshaling empty object should succeed")
	})
}

func TestStringOpenInferenceSpan(t *testing.T) {
	t.Run("StringMethod", func(t *testing.T) {
		t.Parallel()
		obj := &OpenInferenceSpan{}
		result := obj.String()
		assert.NotEmpty(t, result, "String() should return a non-empty representation")
	})

	t.Run("StringMethod_NilReceiver", func(t *testing.T) {
		t.Parallel()
		var obj *OpenInferenceSpan
		result := obj.String()
		assert.Equal(t, "<nil>", result, "String() should return <nil> for nil receiver")
	})
}

func TestStringTraceMetadata(t *testing.T) {
	t.Run("StringMethod", func(t *testing.T) {
		t.Parallel()
		obj := &TraceMetadata{}
		result := obj.String()
		assert.NotEmpty(t, result, "String() should return a non-empty representation")
	})

	t.Run("StringMethod_NilReceiver", func(t *testing.T) {
		t.Parallel()
		var obj *TraceMetadata
		result := obj.String()
		assert.Equal(t, "<nil>", result, "String() should return <nil> for nil receiver")
	})
}

func TestEnumTraceStreamRequestFormat(t *testing.T) {
	t.Run("NewFromString_openinference_v1", func(t *testing.T) {
		t.Parallel()
		val, err := NewTraceStreamRequestFormatFromString("openinference.v1")
		assert.NoError(t, err, "valid enum value should not return error")
		assert.Equal(t, TraceStreamRequestFormat("openinference.v1"), val, "enum value should match expected wire value")
	})

	t.Run("NewFromString_opentelemetry_otlp_v1", func(t *testing.T) {
		t.Parallel()
		val, err := NewTraceStreamRequestFormatFromString("opentelemetry.otlp.v1")
		assert.NoError(t, err, "valid enum value should not return error")
		assert.Equal(t, TraceStreamRequestFormat("opentelemetry.otlp.v1"), val, "enum value should match expected wire value")
	})

	t.Run("NewFromString_harbor_atif_v1", func(t *testing.T) {
		t.Parallel()
		val, err := NewTraceStreamRequestFormatFromString("harbor.atif.v1")
		assert.NoError(t, err, "valid enum value should not return error")
		assert.Equal(t, TraceStreamRequestFormat("harbor.atif.v1"), val, "enum value should match expected wire value")
	})

	t.Run("NewFromString_Invalid", func(t *testing.T) {
		_, err := NewTraceStreamRequestFormatFromString("invalid_value_that_does_not_exist")
		assert.Error(t, err)
	})

	t.Run("Ptr", func(t *testing.T) {
		val, err := NewTraceStreamRequestFormatFromString("openinference.v1")
		assert.NoError(t, err)
		ptr := val.Ptr()
		assert.NotNil(t, ptr)
		assert.Equal(t, val, *ptr)
	})
}

func TestExtraPropertiesOpenInferenceSpan(t *testing.T) {
	t.Run("GetExtraProperties", func(t *testing.T) {
		t.Parallel()
		obj := &OpenInferenceSpan{}
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
		var obj *OpenInferenceSpan
		extraProps := obj.GetExtraProperties()
		assert.Nil(t, extraProps, "nil receiver should return nil without panicking")
	})
}

func TestExtraPropertiesTraceMetadata(t *testing.T) {
	t.Run("GetExtraProperties", func(t *testing.T) {
		t.Parallel()
		obj := &TraceMetadata{}
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
		var obj *TraceMetadata
		extraProps := obj.GetExtraProperties()
		assert.Nil(t, extraProps, "nil receiver should return nil without panicking")
	})
}
