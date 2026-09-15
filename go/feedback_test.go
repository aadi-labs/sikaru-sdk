
package api

import (
	json "encoding/json"
	assert "github.com/stretchr/testify/assert"
	require "github.com/stretchr/testify/require"
	testing "testing"
)

func TestSettersCreateFeedbackRequest(t *testing.T) {
	t.Run("SetIssueID", func(t *testing.T) {
		obj := &CreateFeedbackRequest{}
		var fernTestValueIssueID *string
		obj.SetIssueID(fernTestValueIssueID)
		assert.Equal(t, fernTestValueIssueID, obj.IssueID)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetKind", func(t *testing.T) {
		obj := &CreateFeedbackRequest{}
		var fernTestValueKind CreateFeedbackRequestKind
		obj.SetKind(fernTestValueKind)
		assert.Equal(t, fernTestValueKind, obj.Kind)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetNote", func(t *testing.T) {
		obj := &CreateFeedbackRequest{}
		var fernTestValueNote *string
		obj.SetNote(fernTestValueNote)
		assert.Equal(t, fernTestValueNote, obj.Note)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetSessionID", func(t *testing.T) {
		obj := &CreateFeedbackRequest{}
		var fernTestValueSessionID *string
		obj.SetSessionID(fernTestValueSessionID)
		assert.Equal(t, fernTestValueSessionID, obj.SessionID)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetSpanID", func(t *testing.T) {
		obj := &CreateFeedbackRequest{}
		var fernTestValueSpanID *string
		obj.SetSpanID(fernTestValueSpanID)
		assert.Equal(t, fernTestValueSpanID, obj.SpanID)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetTag", func(t *testing.T) {
		obj := &CreateFeedbackRequest{}
		var fernTestValueTag *string
		obj.SetTag(fernTestValueTag)
		assert.Equal(t, fernTestValueTag, obj.Tag)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetTarget", func(t *testing.T) {
		obj := &CreateFeedbackRequest{}
		var fernTestValueTarget CreateFeedbackRequestTarget
		obj.SetTarget(fernTestValueTarget)
		assert.Equal(t, fernTestValueTarget, obj.Target)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetTargetID", func(t *testing.T) {
		obj := &CreateFeedbackRequest{}
		var fernTestValueTargetID string
		obj.SetTargetID(fernTestValueTargetID)
		assert.Equal(t, fernTestValueTargetID, obj.TargetID)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetTraceID", func(t *testing.T) {
		obj := &CreateFeedbackRequest{}
		var fernTestValueTraceID *string
		obj.SetTraceID(fernTestValueTraceID)
		assert.Equal(t, fernTestValueTraceID, obj.TraceID)
		assert.NotNil(t, obj.explicitFields)
	})

}

func TestSettersMarkExplicitCreateFeedbackRequest(t *testing.T) {
	t.Run("SetIssueID_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &CreateFeedbackRequest{}
		var fernTestValueIssueID *string

		// Act
		obj.SetIssueID(fernTestValueIssueID)

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

	t.Run("SetKind_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &CreateFeedbackRequest{}
		var fernTestValueKind CreateFeedbackRequestKind

		// Act
		obj.SetKind(fernTestValueKind)

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

	t.Run("SetNote_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &CreateFeedbackRequest{}
		var fernTestValueNote *string

		// Act
		obj.SetNote(fernTestValueNote)

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

	t.Run("SetSessionID_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &CreateFeedbackRequest{}
		var fernTestValueSessionID *string

		// Act
		obj.SetSessionID(fernTestValueSessionID)

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
		obj := &CreateFeedbackRequest{}
		var fernTestValueSpanID *string

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

	t.Run("SetTag_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &CreateFeedbackRequest{}
		var fernTestValueTag *string

		// Act
		obj.SetTag(fernTestValueTag)

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

	t.Run("SetTarget_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &CreateFeedbackRequest{}
		var fernTestValueTarget CreateFeedbackRequestTarget

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

	t.Run("SetTargetID_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &CreateFeedbackRequest{}
		var fernTestValueTargetID string

		// Act
		obj.SetTargetID(fernTestValueTargetID)

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
		obj := &CreateFeedbackRequest{}
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

}

func TestEnumCreateFeedbackRequestKind(t *testing.T) {
	t.Run("NewFromString_thumbs_up", func(t *testing.T) {
		t.Parallel()
		val, err := NewCreateFeedbackRequestKindFromString("thumbs_up")
		assert.NoError(t, err, "valid enum value should not return error")
		assert.Equal(t, CreateFeedbackRequestKind("thumbs_up"), val, "enum value should match expected wire value")
	})

	t.Run("NewFromString_thumbs_down", func(t *testing.T) {
		t.Parallel()
		val, err := NewCreateFeedbackRequestKindFromString("thumbs_down")
		assert.NoError(t, err, "valid enum value should not return error")
		assert.Equal(t, CreateFeedbackRequestKind("thumbs_down"), val, "enum value should match expected wire value")
	})

	t.Run("NewFromString_annotation", func(t *testing.T) {
		t.Parallel()
		val, err := NewCreateFeedbackRequestKindFromString("annotation")
		assert.NoError(t, err, "valid enum value should not return error")
		assert.Equal(t, CreateFeedbackRequestKind("annotation"), val, "enum value should match expected wire value")
	})

	t.Run("NewFromString_Invalid", func(t *testing.T) {
		_, err := NewCreateFeedbackRequestKindFromString("invalid_value_that_does_not_exist")
		assert.Error(t, err)
	})

	t.Run("Ptr", func(t *testing.T) {
		val, err := NewCreateFeedbackRequestKindFromString("thumbs_up")
		assert.NoError(t, err)
		ptr := val.Ptr()
		assert.NotNil(t, ptr)
		assert.Equal(t, val, *ptr)
	})
}

func TestEnumCreateFeedbackRequestTarget(t *testing.T) {
	t.Run("NewFromString_trace", func(t *testing.T) {
		t.Parallel()
		val, err := NewCreateFeedbackRequestTargetFromString("trace")
		assert.NoError(t, err, "valid enum value should not return error")
		assert.Equal(t, CreateFeedbackRequestTarget("trace"), val, "enum value should match expected wire value")
	})

	t.Run("NewFromString_span", func(t *testing.T) {
		t.Parallel()
		val, err := NewCreateFeedbackRequestTargetFromString("span")
		assert.NoError(t, err, "valid enum value should not return error")
		assert.Equal(t, CreateFeedbackRequestTarget("span"), val, "enum value should match expected wire value")
	})

	t.Run("NewFromString_session", func(t *testing.T) {
		t.Parallel()
		val, err := NewCreateFeedbackRequestTargetFromString("session")
		assert.NoError(t, err, "valid enum value should not return error")
		assert.Equal(t, CreateFeedbackRequestTarget("session"), val, "enum value should match expected wire value")
	})

	t.Run("NewFromString_issue", func(t *testing.T) {
		t.Parallel()
		val, err := NewCreateFeedbackRequestTargetFromString("issue")
		assert.NoError(t, err, "valid enum value should not return error")
		assert.Equal(t, CreateFeedbackRequestTarget("issue"), val, "enum value should match expected wire value")
	})

	t.Run("NewFromString_Invalid", func(t *testing.T) {
		_, err := NewCreateFeedbackRequestTargetFromString("invalid_value_that_does_not_exist")
		assert.Error(t, err)
	})

	t.Run("Ptr", func(t *testing.T) {
		val, err := NewCreateFeedbackRequestTargetFromString("trace")
		assert.NoError(t, err)
		ptr := val.Ptr()
		assert.NotNil(t, ptr)
		assert.Equal(t, val, *ptr)
	})
}
