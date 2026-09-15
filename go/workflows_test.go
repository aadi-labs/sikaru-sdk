
package api

import (
	json "encoding/json"
	assert "github.com/stretchr/testify/assert"
	require "github.com/stretchr/testify/require"
	testing "testing"
)

func TestSettersCreateWorkflowVersionRequest(t *testing.T) {
	t.Run("SetReleaseChannel", func(t *testing.T) {
		obj := &CreateWorkflowVersionRequest{}
		var fernTestValueReleaseChannel *CreateWorkflowVersionRequestReleaseChannel
		obj.SetReleaseChannel(fernTestValueReleaseChannel)
		assert.Equal(t, fernTestValueReleaseChannel, obj.ReleaseChannel)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetStatus", func(t *testing.T) {
		obj := &CreateWorkflowVersionRequest{}
		var fernTestValueStatus *CreateWorkflowVersionRequestStatus
		obj.SetStatus(fernTestValueStatus)
		assert.Equal(t, fernTestValueStatus, obj.Status)
		assert.NotNil(t, obj.explicitFields)
	})

}

func TestSettersMarkExplicitCreateWorkflowVersionRequest(t *testing.T) {
	t.Run("SetReleaseChannel_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &CreateWorkflowVersionRequest{}
		var fernTestValueReleaseChannel *CreateWorkflowVersionRequestReleaseChannel

		// Act
		obj.SetReleaseChannel(fernTestValueReleaseChannel)

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

	t.Run("SetStatus_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &CreateWorkflowVersionRequest{}
		var fernTestValueStatus *CreateWorkflowVersionRequestStatus

		// Act
		obj.SetStatus(fernTestValueStatus)

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

func TestSettersImportWorkflowRequest(t *testing.T) {
	t.Run("SetPayload", func(t *testing.T) {
		obj := &ImportWorkflowRequest{}
		var fernTestValuePayload map[string]any
		obj.SetPayload(fernTestValuePayload)
		assert.Equal(t, fernTestValuePayload, obj.Payload)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetSourceArtifactID", func(t *testing.T) {
		obj := &ImportWorkflowRequest{}
		var fernTestValueSourceArtifactID *string
		obj.SetSourceArtifactID(fernTestValueSourceArtifactID)
		assert.Equal(t, fernTestValueSourceArtifactID, obj.SourceArtifactID)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetWorkflowID", func(t *testing.T) {
		obj := &ImportWorkflowRequest{}
		var fernTestValueWorkflowID *string
		obj.SetWorkflowID(fernTestValueWorkflowID)
		assert.Equal(t, fernTestValueWorkflowID, obj.WorkflowID)
		assert.NotNil(t, obj.explicitFields)
	})

}

func TestSettersMarkExplicitImportWorkflowRequest(t *testing.T) {
	t.Run("SetPayload_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &ImportWorkflowRequest{}
		var fernTestValuePayload map[string]any

		// Act
		obj.SetPayload(fernTestValuePayload)

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

	t.Run("SetSourceArtifactID_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &ImportWorkflowRequest{}
		var fernTestValueSourceArtifactID *string

		// Act
		obj.SetSourceArtifactID(fernTestValueSourceArtifactID)

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

	t.Run("SetWorkflowID_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &ImportWorkflowRequest{}
		var fernTestValueWorkflowID *string

		// Act
		obj.SetWorkflowID(fernTestValueWorkflowID)

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

func TestSettersStartWorkflowRunRequest(t *testing.T) {
	t.Run("SetIdempotencyKey", func(t *testing.T) {
		obj := &StartWorkflowRunRequest{}
		var fernTestValueIdempotencyKey *string
		obj.SetIdempotencyKey(fernTestValueIdempotencyKey)
		assert.Equal(t, fernTestValueIdempotencyKey, obj.IdempotencyKey)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetInput", func(t *testing.T) {
		obj := &StartWorkflowRunRequest{}
		var fernTestValueInput map[string]any
		obj.SetInput(fernTestValueInput)
		assert.Equal(t, fernTestValueInput, obj.Input)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetWorkflowVersionID", func(t *testing.T) {
		obj := &StartWorkflowRunRequest{}
		var fernTestValueWorkflowVersionID *string
		obj.SetWorkflowVersionID(fernTestValueWorkflowVersionID)
		assert.Equal(t, fernTestValueWorkflowVersionID, obj.WorkflowVersionID)
		assert.NotNil(t, obj.explicitFields)
	})

}

func TestSettersMarkExplicitStartWorkflowRunRequest(t *testing.T) {
	t.Run("SetIdempotencyKey_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &StartWorkflowRunRequest{}
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

	t.Run("SetInput_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &StartWorkflowRunRequest{}
		var fernTestValueInput map[string]any

		// Act
		obj.SetInput(fernTestValueInput)

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

	t.Run("SetWorkflowVersionID_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &StartWorkflowRunRequest{}
		var fernTestValueWorkflowVersionID *string

		// Act
		obj.SetWorkflowVersionID(fernTestValueWorkflowVersionID)

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

func TestEnumCreateWorkflowVersionRequestReleaseChannel(t *testing.T) {
	t.Run("NewFromString_draft", func(t *testing.T) {
		t.Parallel()
		val, err := NewCreateWorkflowVersionRequestReleaseChannelFromString("draft")
		assert.NoError(t, err, "valid enum value should not return error")
		assert.Equal(t, CreateWorkflowVersionRequestReleaseChannel("draft"), val, "enum value should match expected wire value")
	})

	t.Run("NewFromString_staging", func(t *testing.T) {
		t.Parallel()
		val, err := NewCreateWorkflowVersionRequestReleaseChannelFromString("staging")
		assert.NoError(t, err, "valid enum value should not return error")
		assert.Equal(t, CreateWorkflowVersionRequestReleaseChannel("staging"), val, "enum value should match expected wire value")
	})

	t.Run("NewFromString_production", func(t *testing.T) {
		t.Parallel()
		val, err := NewCreateWorkflowVersionRequestReleaseChannelFromString("production")
		assert.NoError(t, err, "valid enum value should not return error")
		assert.Equal(t, CreateWorkflowVersionRequestReleaseChannel("production"), val, "enum value should match expected wire value")
	})

	t.Run("NewFromString_Invalid", func(t *testing.T) {
		_, err := NewCreateWorkflowVersionRequestReleaseChannelFromString("invalid_value_that_does_not_exist")
		assert.Error(t, err)
	})

	t.Run("Ptr", func(t *testing.T) {
		val, err := NewCreateWorkflowVersionRequestReleaseChannelFromString("draft")
		assert.NoError(t, err)
		ptr := val.Ptr()
		assert.NotNil(t, ptr)
		assert.Equal(t, val, *ptr)
	})
}

func TestEnumCreateWorkflowVersionRequestStatus(t *testing.T) {
	t.Run("NewFromString_draft", func(t *testing.T) {
		t.Parallel()
		val, err := NewCreateWorkflowVersionRequestStatusFromString("draft")
		assert.NoError(t, err, "valid enum value should not return error")
		assert.Equal(t, CreateWorkflowVersionRequestStatus("draft"), val, "enum value should match expected wire value")
	})

	t.Run("NewFromString_active", func(t *testing.T) {
		t.Parallel()
		val, err := NewCreateWorkflowVersionRequestStatusFromString("active")
		assert.NoError(t, err, "valid enum value should not return error")
		assert.Equal(t, CreateWorkflowVersionRequestStatus("active"), val, "enum value should match expected wire value")
	})

	t.Run("NewFromString_replaced", func(t *testing.T) {
		t.Parallel()
		val, err := NewCreateWorkflowVersionRequestStatusFromString("replaced")
		assert.NoError(t, err, "valid enum value should not return error")
		assert.Equal(t, CreateWorkflowVersionRequestStatus("replaced"), val, "enum value should match expected wire value")
	})

	t.Run("NewFromString_archived", func(t *testing.T) {
		t.Parallel()
		val, err := NewCreateWorkflowVersionRequestStatusFromString("archived")
		assert.NoError(t, err, "valid enum value should not return error")
		assert.Equal(t, CreateWorkflowVersionRequestStatus("archived"), val, "enum value should match expected wire value")
	})

	t.Run("NewFromString_Invalid", func(t *testing.T) {
		_, err := NewCreateWorkflowVersionRequestStatusFromString("invalid_value_that_does_not_exist")
		assert.Error(t, err)
	})

	t.Run("Ptr", func(t *testing.T) {
		val, err := NewCreateWorkflowVersionRequestStatusFromString("draft")
		assert.NoError(t, err)
		ptr := val.Ptr()
		assert.NotNil(t, ptr)
		assert.Equal(t, val, *ptr)
	})
}
