
package api

import (
	json "encoding/json"
	assert "github.com/stretchr/testify/assert"
	require "github.com/stretchr/testify/require"
	testing "testing"
)

func TestSettersCreateHarnessVersionRequest(t *testing.T) {
	t.Run("SetBaseHarnessProfileID", func(t *testing.T) {
		obj := &CreateHarnessVersionRequest{}
		var fernTestValueBaseHarnessProfileID string
		obj.SetBaseHarnessProfileID(fernTestValueBaseHarnessProfileID)
		assert.Equal(t, fernTestValueBaseHarnessProfileID, obj.BaseHarnessProfileID)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetBaseHarnessVersionID", func(t *testing.T) {
		obj := &CreateHarnessVersionRequest{}
		var fernTestValueBaseHarnessVersionID *string
		obj.SetBaseHarnessVersionID(fernTestValueBaseHarnessVersionID)
		assert.Equal(t, fernTestValueBaseHarnessVersionID, obj.BaseHarnessVersionID)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetCompatibilityProfileID", func(t *testing.T) {
		obj := &CreateHarnessVersionRequest{}
		var fernTestValueCompatibilityProfileID string
		obj.SetCompatibilityProfileID(fernTestValueCompatibilityProfileID)
		assert.Equal(t, fernTestValueCompatibilityProfileID, obj.CompatibilityProfileID)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetDisplayName", func(t *testing.T) {
		obj := &CreateHarnessVersionRequest{}
		var fernTestValueDisplayName string
		obj.SetDisplayName(fernTestValueDisplayName)
		assert.Equal(t, fernTestValueDisplayName, obj.DisplayName)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetHarnessID", func(t *testing.T) {
		obj := &CreateHarnessVersionRequest{}
		var fernTestValueHarnessID string
		obj.SetHarnessID(fernTestValueHarnessID)
		assert.Equal(t, fernTestValueHarnessID, obj.HarnessID)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetSourceArtifactID", func(t *testing.T) {
		obj := &CreateHarnessVersionRequest{}
		var fernTestValueSourceArtifactID string
		obj.SetSourceArtifactID(fernTestValueSourceArtifactID)
		assert.Equal(t, fernTestValueSourceArtifactID, obj.SourceArtifactID)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetStatus", func(t *testing.T) {
		obj := &CreateHarnessVersionRequest{}
		var fernTestValueStatus *CreateHarnessVersionRequestStatus
		obj.SetStatus(fernTestValueStatus)
		assert.Equal(t, fernTestValueStatus, obj.Status)
		assert.NotNil(t, obj.explicitFields)
	})

}

func TestSettersMarkExplicitCreateHarnessVersionRequest(t *testing.T) {
	t.Run("SetBaseHarnessProfileID_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &CreateHarnessVersionRequest{}
		var fernTestValueBaseHarnessProfileID string

		// Act
		obj.SetBaseHarnessProfileID(fernTestValueBaseHarnessProfileID)

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
		obj := &CreateHarnessVersionRequest{}
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
		obj := &CreateHarnessVersionRequest{}
		var fernTestValueCompatibilityProfileID string

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

	t.Run("SetDisplayName_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &CreateHarnessVersionRequest{}
		var fernTestValueDisplayName string

		// Act
		obj.SetDisplayName(fernTestValueDisplayName)

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
		obj := &CreateHarnessVersionRequest{}
		var fernTestValueHarnessID string

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

	t.Run("SetSourceArtifactID_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &CreateHarnessVersionRequest{}
		var fernTestValueSourceArtifactID string

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

	t.Run("SetStatus_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &CreateHarnessVersionRequest{}
		var fernTestValueStatus *CreateHarnessVersionRequestStatus

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

func TestEnumCreateHarnessVersionRequestStatus(t *testing.T) {
	t.Run("NewFromString_active", func(t *testing.T) {
		t.Parallel()
		val, err := NewCreateHarnessVersionRequestStatusFromString("active")
		assert.NoError(t, err, "valid enum value should not return error")
		assert.Equal(t, CreateHarnessVersionRequestStatus("active"), val, "enum value should match expected wire value")
	})

	t.Run("NewFromString_draft", func(t *testing.T) {
		t.Parallel()
		val, err := NewCreateHarnessVersionRequestStatusFromString("draft")
		assert.NoError(t, err, "valid enum value should not return error")
		assert.Equal(t, CreateHarnessVersionRequestStatus("draft"), val, "enum value should match expected wire value")
	})

	t.Run("NewFromString_Invalid", func(t *testing.T) {
		_, err := NewCreateHarnessVersionRequestStatusFromString("invalid_value_that_does_not_exist")
		assert.Error(t, err)
	})

	t.Run("Ptr", func(t *testing.T) {
		val, err := NewCreateHarnessVersionRequestStatusFromString("active")
		assert.NoError(t, err)
		ptr := val.Ptr()
		assert.NotNil(t, ptr)
		assert.Equal(t, val, *ptr)
	})
}
