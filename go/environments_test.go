
package api

import (
	json "encoding/json"
	assert "github.com/stretchr/testify/assert"
	require "github.com/stretchr/testify/require"
	testing "testing"
)

func TestSettersCreateManagedEnvironmentRequest(t *testing.T) {
	t.Run("SetConfigRefs", func(t *testing.T) {
		obj := &CreateManagedEnvironmentRequest{}
		var fernTestValueConfigRefs map[string]any
		obj.SetConfigRefs(fernTestValueConfigRefs)
		assert.Equal(t, fernTestValueConfigRefs, obj.ConfigRefs)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetEnvironmentSlug", func(t *testing.T) {
		obj := &CreateManagedEnvironmentRequest{}
		var fernTestValueEnvironmentSlug string
		obj.SetEnvironmentSlug(fernTestValueEnvironmentSlug)
		assert.Equal(t, fernTestValueEnvironmentSlug, obj.EnvironmentSlug)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetProviderType", func(t *testing.T) {
		obj := &CreateManagedEnvironmentRequest{}
		var fernTestValueProviderType string
		obj.SetProviderType(fernTestValueProviderType)
		assert.Equal(t, fernTestValueProviderType, obj.ProviderType)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetRuntimeProvider", func(t *testing.T) {
		obj := &CreateManagedEnvironmentRequest{}
		var fernTestValueRuntimeProvider string
		obj.SetRuntimeProvider(fernTestValueRuntimeProvider)
		assert.Equal(t, fernTestValueRuntimeProvider, obj.RuntimeProvider)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetStatus", func(t *testing.T) {
		obj := &CreateManagedEnvironmentRequest{}
		var fernTestValueStatus *string
		obj.SetStatus(fernTestValueStatus)
		assert.Equal(t, fernTestValueStatus, obj.Status)
		assert.NotNil(t, obj.explicitFields)
	})

}

func TestSettersMarkExplicitCreateManagedEnvironmentRequest(t *testing.T) {
	t.Run("SetConfigRefs_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &CreateManagedEnvironmentRequest{}
		var fernTestValueConfigRefs map[string]any

		// Act
		obj.SetConfigRefs(fernTestValueConfigRefs)

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

	t.Run("SetEnvironmentSlug_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &CreateManagedEnvironmentRequest{}
		var fernTestValueEnvironmentSlug string

		// Act
		obj.SetEnvironmentSlug(fernTestValueEnvironmentSlug)

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

	t.Run("SetProviderType_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &CreateManagedEnvironmentRequest{}
		var fernTestValueProviderType string

		// Act
		obj.SetProviderType(fernTestValueProviderType)

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

	t.Run("SetRuntimeProvider_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &CreateManagedEnvironmentRequest{}
		var fernTestValueRuntimeProvider string

		// Act
		obj.SetRuntimeProvider(fernTestValueRuntimeProvider)

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
		obj := &CreateManagedEnvironmentRequest{}
		var fernTestValueStatus *string

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
