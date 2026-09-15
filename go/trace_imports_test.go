
package api

import (
	json "encoding/json"
	assert "github.com/stretchr/testify/assert"
	require "github.com/stretchr/testify/require"
	testing "testing"
	time "time"
)

func TestSettersCreateTraceImportRequest(t *testing.T) {
	t.Run("SetConnectionID", func(t *testing.T) {
		obj := &CreateTraceImportRequest{}
		var fernTestValueConnectionID string
		obj.SetConnectionID(fernTestValueConnectionID)
		assert.Equal(t, fernTestValueConnectionID, obj.ConnectionID)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetConverterVersion", func(t *testing.T) {
		obj := &CreateTraceImportRequest{}
		var fernTestValueConverterVersion string
		obj.SetConverterVersion(fernTestValueConverterVersion)
		assert.Equal(t, fernTestValueConverterVersion, obj.ConverterVersion)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetDataset", func(t *testing.T) {
		obj := &CreateTraceImportRequest{}
		var fernTestValueDataset string
		obj.SetDataset(fernTestValueDataset)
		assert.Equal(t, fernTestValueDataset, obj.Dataset)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetExternalProjectID", func(t *testing.T) {
		obj := &CreateTraceImportRequest{}
		var fernTestValueExternalProjectID string
		obj.SetExternalProjectID(fernTestValueExternalProjectID)
		assert.Equal(t, fernTestValueExternalProjectID, obj.ExternalProjectID)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetGrouping", func(t *testing.T) {
		obj := &CreateTraceImportRequest{}
		var fernTestValueGrouping *TraceImportGroupingRequest
		obj.SetGrouping(fernTestValueGrouping)
		assert.Equal(t, fernTestValueGrouping, obj.Grouping)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetMode", func(t *testing.T) {
		obj := &CreateTraceImportRequest{}
		var fernTestValueMode CreateTraceImportRequestMode
		obj.SetMode(fernTestValueMode)
		assert.Equal(t, fernTestValueMode, obj.Mode)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetOptions", func(t *testing.T) {
		obj := &CreateTraceImportRequest{}
		var fernTestValueOptions *TraceImportOptionsRequest
		obj.SetOptions(fernTestValueOptions)
		assert.Equal(t, fernTestValueOptions, obj.Options)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetProvider", func(t *testing.T) {
		obj := &CreateTraceImportRequest{}
		var fernTestValueProvider CreateTraceImportRequestProvider
		obj.SetProvider(fernTestValueProvider)
		assert.Equal(t, fernTestValueProvider, obj.Provider)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetScope", func(t *testing.T) {
		obj := &CreateTraceImportRequest{}
		var fernTestValueScope *TraceImportScopeRequest
		obj.SetScope(fernTestValueScope)
		assert.Equal(t, fernTestValueScope, obj.Scope)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetSourceInstance", func(t *testing.T) {
		obj := &CreateTraceImportRequest{}
		var fernTestValueSourceInstance string
		obj.SetSourceInstance(fernTestValueSourceInstance)
		assert.Equal(t, fernTestValueSourceInstance, obj.SourceInstance)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetTags", func(t *testing.T) {
		obj := &CreateTraceImportRequest{}
		var fernTestValueTags []string
		obj.SetTags(fernTestValueTags)
		assert.Equal(t, fernTestValueTags, obj.Tags)
		assert.NotNil(t, obj.explicitFields)
	})

}

func TestSettersMarkExplicitCreateTraceImportRequest(t *testing.T) {
	t.Run("SetConnectionID_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &CreateTraceImportRequest{}
		var fernTestValueConnectionID string

		// Act
		obj.SetConnectionID(fernTestValueConnectionID)

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
		obj := &CreateTraceImportRequest{}
		var fernTestValueConverterVersion string

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

	t.Run("SetDataset_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &CreateTraceImportRequest{}
		var fernTestValueDataset string

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

	t.Run("SetExternalProjectID_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &CreateTraceImportRequest{}
		var fernTestValueExternalProjectID string

		// Act
		obj.SetExternalProjectID(fernTestValueExternalProjectID)

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

	t.Run("SetGrouping_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &CreateTraceImportRequest{}
		var fernTestValueGrouping *TraceImportGroupingRequest

		// Act
		obj.SetGrouping(fernTestValueGrouping)

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

	t.Run("SetMode_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &CreateTraceImportRequest{}
		var fernTestValueMode CreateTraceImportRequestMode

		// Act
		obj.SetMode(fernTestValueMode)

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

	t.Run("SetOptions_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &CreateTraceImportRequest{}
		var fernTestValueOptions *TraceImportOptionsRequest

		// Act
		obj.SetOptions(fernTestValueOptions)

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

	t.Run("SetProvider_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &CreateTraceImportRequest{}
		var fernTestValueProvider CreateTraceImportRequestProvider

		// Act
		obj.SetProvider(fernTestValueProvider)

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

	t.Run("SetScope_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &CreateTraceImportRequest{}
		var fernTestValueScope *TraceImportScopeRequest

		// Act
		obj.SetScope(fernTestValueScope)

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
		obj := &CreateTraceImportRequest{}
		var fernTestValueSourceInstance string

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

	t.Run("SetTags_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &CreateTraceImportRequest{}
		var fernTestValueTags []string

		// Act
		obj.SetTags(fernTestValueTags)

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

func TestSettersPlanTraceImportRequest(t *testing.T) {
	t.Run("SetConnectionID", func(t *testing.T) {
		obj := &PlanTraceImportRequest{}
		var fernTestValueConnectionID string
		obj.SetConnectionID(fernTestValueConnectionID)
		assert.Equal(t, fernTestValueConnectionID, obj.ConnectionID)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetConverterVersion", func(t *testing.T) {
		obj := &PlanTraceImportRequest{}
		var fernTestValueConverterVersion string
		obj.SetConverterVersion(fernTestValueConverterVersion)
		assert.Equal(t, fernTestValueConverterVersion, obj.ConverterVersion)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetDataset", func(t *testing.T) {
		obj := &PlanTraceImportRequest{}
		var fernTestValueDataset string
		obj.SetDataset(fernTestValueDataset)
		assert.Equal(t, fernTestValueDataset, obj.Dataset)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetExternalProjectID", func(t *testing.T) {
		obj := &PlanTraceImportRequest{}
		var fernTestValueExternalProjectID string
		obj.SetExternalProjectID(fernTestValueExternalProjectID)
		assert.Equal(t, fernTestValueExternalProjectID, obj.ExternalProjectID)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetGrouping", func(t *testing.T) {
		obj := &PlanTraceImportRequest{}
		var fernTestValueGrouping *TraceImportGroupingRequest
		obj.SetGrouping(fernTestValueGrouping)
		assert.Equal(t, fernTestValueGrouping, obj.Grouping)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetMode", func(t *testing.T) {
		obj := &PlanTraceImportRequest{}
		var fernTestValueMode PlanTraceImportRequestMode
		obj.SetMode(fernTestValueMode)
		assert.Equal(t, fernTestValueMode, obj.Mode)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetOptions", func(t *testing.T) {
		obj := &PlanTraceImportRequest{}
		var fernTestValueOptions *TraceImportOptionsRequest
		obj.SetOptions(fernTestValueOptions)
		assert.Equal(t, fernTestValueOptions, obj.Options)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetProvider", func(t *testing.T) {
		obj := &PlanTraceImportRequest{}
		var fernTestValueProvider PlanTraceImportRequestProvider
		obj.SetProvider(fernTestValueProvider)
		assert.Equal(t, fernTestValueProvider, obj.Provider)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetScope", func(t *testing.T) {
		obj := &PlanTraceImportRequest{}
		var fernTestValueScope *TraceImportScopeRequest
		obj.SetScope(fernTestValueScope)
		assert.Equal(t, fernTestValueScope, obj.Scope)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetSourceInstance", func(t *testing.T) {
		obj := &PlanTraceImportRequest{}
		var fernTestValueSourceInstance string
		obj.SetSourceInstance(fernTestValueSourceInstance)
		assert.Equal(t, fernTestValueSourceInstance, obj.SourceInstance)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetTags", func(t *testing.T) {
		obj := &PlanTraceImportRequest{}
		var fernTestValueTags []string
		obj.SetTags(fernTestValueTags)
		assert.Equal(t, fernTestValueTags, obj.Tags)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetWindowDurationHours", func(t *testing.T) {
		obj := &PlanTraceImportRequest{}
		var fernTestValueWindowDurationHours *int
		obj.SetWindowDurationHours(fernTestValueWindowDurationHours)
		assert.Equal(t, fernTestValueWindowDurationHours, obj.WindowDurationHours)
		assert.NotNil(t, obj.explicitFields)
	})

}

func TestSettersMarkExplicitPlanTraceImportRequest(t *testing.T) {
	t.Run("SetConnectionID_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &PlanTraceImportRequest{}
		var fernTestValueConnectionID string

		// Act
		obj.SetConnectionID(fernTestValueConnectionID)

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
		obj := &PlanTraceImportRequest{}
		var fernTestValueConverterVersion string

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

	t.Run("SetDataset_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &PlanTraceImportRequest{}
		var fernTestValueDataset string

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

	t.Run("SetExternalProjectID_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &PlanTraceImportRequest{}
		var fernTestValueExternalProjectID string

		// Act
		obj.SetExternalProjectID(fernTestValueExternalProjectID)

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

	t.Run("SetGrouping_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &PlanTraceImportRequest{}
		var fernTestValueGrouping *TraceImportGroupingRequest

		// Act
		obj.SetGrouping(fernTestValueGrouping)

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

	t.Run("SetMode_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &PlanTraceImportRequest{}
		var fernTestValueMode PlanTraceImportRequestMode

		// Act
		obj.SetMode(fernTestValueMode)

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

	t.Run("SetOptions_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &PlanTraceImportRequest{}
		var fernTestValueOptions *TraceImportOptionsRequest

		// Act
		obj.SetOptions(fernTestValueOptions)

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

	t.Run("SetProvider_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &PlanTraceImportRequest{}
		var fernTestValueProvider PlanTraceImportRequestProvider

		// Act
		obj.SetProvider(fernTestValueProvider)

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

	t.Run("SetScope_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &PlanTraceImportRequest{}
		var fernTestValueScope *TraceImportScopeRequest

		// Act
		obj.SetScope(fernTestValueScope)

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
		obj := &PlanTraceImportRequest{}
		var fernTestValueSourceInstance string

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

	t.Run("SetTags_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &PlanTraceImportRequest{}
		var fernTestValueTags []string

		// Act
		obj.SetTags(fernTestValueTags)

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

	t.Run("SetWindowDurationHours_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &PlanTraceImportRequest{}
		var fernTestValueWindowDurationHours *int

		// Act
		obj.SetWindowDurationHours(fernTestValueWindowDurationHours)

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

func TestSettersTraceImportGroupingRequest(t *testing.T) {
	t.Run("SetContractVersion", func(t *testing.T) {
		obj := &TraceImportGroupingRequest{}
		var fernTestValueContractVersion *string
		obj.SetContractVersion(fernTestValueContractVersion)
		assert.Equal(t, fernTestValueContractVersion, obj.ContractVersion)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetJoinOn", func(t *testing.T) {
		obj := &TraceImportGroupingRequest{}
		var fernTestValueJoinOn *string
		obj.SetJoinOn(fernTestValueJoinOn)
		assert.Equal(t, fernTestValueJoinOn, obj.JoinOn)
		assert.NotNil(t, obj.explicitFields)
	})

}

func TestGettersTraceImportGroupingRequest(t *testing.T) {
	t.Run("GetContractVersion", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceImportGroupingRequest{}
		var expected *string
		obj.ContractVersion = expected

		// Act & Assert
		assert.Equal(t, expected, obj.GetContractVersion(), "getter should return the property value")
	})

	t.Run("GetContractVersion_NilValue", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceImportGroupingRequest{}
		obj.ContractVersion = nil

		// Act & Assert
		assert.Nil(t, obj.GetContractVersion(), "getter should return nil when property is nil")
	})

	t.Run("GetContractVersion_NilReceiver", func(t *testing.T) {
		t.Parallel()
		var obj *TraceImportGroupingRequest
		// Should not panic - getters should handle nil receiver gracefully
		defer func() {
			if r := recover(); r != nil {
				t.Errorf("Getter panicked on nil receiver: %v", r)
			}
		}()
		_ = obj.GetContractVersion() // Should return zero value
	})

	t.Run("GetJoinOn", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceImportGroupingRequest{}
		var expected *string
		obj.JoinOn = expected

		// Act & Assert
		assert.Equal(t, expected, obj.GetJoinOn(), "getter should return the property value")
	})

	t.Run("GetJoinOn_NilValue", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceImportGroupingRequest{}
		obj.JoinOn = nil

		// Act & Assert
		assert.Nil(t, obj.GetJoinOn(), "getter should return nil when property is nil")
	})

	t.Run("GetJoinOn_NilReceiver", func(t *testing.T) {
		t.Parallel()
		var obj *TraceImportGroupingRequest
		// Should not panic - getters should handle nil receiver gracefully
		defer func() {
			if r := recover(); r != nil {
				t.Errorf("Getter panicked on nil receiver: %v", r)
			}
		}()
		_ = obj.GetJoinOn() // Should return zero value
	})

}

func TestSettersMarkExplicitTraceImportGroupingRequest(t *testing.T) {
	t.Run("SetContractVersion_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceImportGroupingRequest{}
		var fernTestValueContractVersion *string

		// Act
		obj.SetContractVersion(fernTestValueContractVersion)

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

	t.Run("SetJoinOn_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceImportGroupingRequest{}
		var fernTestValueJoinOn *string

		// Act
		obj.SetJoinOn(fernTestValueJoinOn)

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

func TestSettersTraceImportOptionsRequest(t *testing.T) {
	t.Run("SetIncludeFeedback", func(t *testing.T) {
		obj := &TraceImportOptionsRequest{}
		var fernTestValueIncludeFeedback *bool
		obj.SetIncludeFeedback(fernTestValueIncludeFeedback)
		assert.Equal(t, fernTestValueIncludeFeedback, obj.IncludeFeedback)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetIncludePendingSpans", func(t *testing.T) {
		obj := &TraceImportOptionsRequest{}
		var fernTestValueIncludePendingSpans *bool
		obj.SetIncludePendingSpans(fernTestValueIncludePendingSpans)
		assert.Equal(t, fernTestValueIncludePendingSpans, obj.IncludePendingSpans)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetInferAgentBoundaries", func(t *testing.T) {
		obj := &TraceImportOptionsRequest{}
		var fernTestValueInferAgentBoundaries *bool
		obj.SetInferAgentBoundaries(fernTestValueInferAgentBoundaries)
		assert.Equal(t, fernTestValueInferAgentBoundaries, obj.InferAgentBoundaries)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetInferToolCallLinks", func(t *testing.T) {
		obj := &TraceImportOptionsRequest{}
		var fernTestValueInferToolCallLinks *bool
		obj.SetInferToolCallLinks(fernTestValueInferToolCallLinks)
		assert.Equal(t, fernTestValueInferToolCallLinks, obj.InferToolCallLinks)
		assert.NotNil(t, obj.explicitFields)
	})

}

func TestGettersTraceImportOptionsRequest(t *testing.T) {
	t.Run("GetIncludeFeedback", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceImportOptionsRequest{}
		var expected *bool
		obj.IncludeFeedback = expected

		// Act & Assert
		assert.Equal(t, expected, obj.GetIncludeFeedback(), "getter should return the property value")
	})

	t.Run("GetIncludeFeedback_NilValue", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceImportOptionsRequest{}
		obj.IncludeFeedback = nil

		// Act & Assert
		assert.Nil(t, obj.GetIncludeFeedback(), "getter should return nil when property is nil")
	})

	t.Run("GetIncludeFeedback_NilReceiver", func(t *testing.T) {
		t.Parallel()
		var obj *TraceImportOptionsRequest
		// Should not panic - getters should handle nil receiver gracefully
		defer func() {
			if r := recover(); r != nil {
				t.Errorf("Getter panicked on nil receiver: %v", r)
			}
		}()
		_ = obj.GetIncludeFeedback() // Should return zero value
	})

	t.Run("GetIncludePendingSpans", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceImportOptionsRequest{}
		var expected *bool
		obj.IncludePendingSpans = expected

		// Act & Assert
		assert.Equal(t, expected, obj.GetIncludePendingSpans(), "getter should return the property value")
	})

	t.Run("GetIncludePendingSpans_NilValue", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceImportOptionsRequest{}
		obj.IncludePendingSpans = nil

		// Act & Assert
		assert.Nil(t, obj.GetIncludePendingSpans(), "getter should return nil when property is nil")
	})

	t.Run("GetIncludePendingSpans_NilReceiver", func(t *testing.T) {
		t.Parallel()
		var obj *TraceImportOptionsRequest
		// Should not panic - getters should handle nil receiver gracefully
		defer func() {
			if r := recover(); r != nil {
				t.Errorf("Getter panicked on nil receiver: %v", r)
			}
		}()
		_ = obj.GetIncludePendingSpans() // Should return zero value
	})

	t.Run("GetInferAgentBoundaries", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceImportOptionsRequest{}
		var expected *bool
		obj.InferAgentBoundaries = expected

		// Act & Assert
		assert.Equal(t, expected, obj.GetInferAgentBoundaries(), "getter should return the property value")
	})

	t.Run("GetInferAgentBoundaries_NilValue", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceImportOptionsRequest{}
		obj.InferAgentBoundaries = nil

		// Act & Assert
		assert.Nil(t, obj.GetInferAgentBoundaries(), "getter should return nil when property is nil")
	})

	t.Run("GetInferAgentBoundaries_NilReceiver", func(t *testing.T) {
		t.Parallel()
		var obj *TraceImportOptionsRequest
		// Should not panic - getters should handle nil receiver gracefully
		defer func() {
			if r := recover(); r != nil {
				t.Errorf("Getter panicked on nil receiver: %v", r)
			}
		}()
		_ = obj.GetInferAgentBoundaries() // Should return zero value
	})

	t.Run("GetInferToolCallLinks", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceImportOptionsRequest{}
		var expected *bool
		obj.InferToolCallLinks = expected

		// Act & Assert
		assert.Equal(t, expected, obj.GetInferToolCallLinks(), "getter should return the property value")
	})

	t.Run("GetInferToolCallLinks_NilValue", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceImportOptionsRequest{}
		obj.InferToolCallLinks = nil

		// Act & Assert
		assert.Nil(t, obj.GetInferToolCallLinks(), "getter should return nil when property is nil")
	})

	t.Run("GetInferToolCallLinks_NilReceiver", func(t *testing.T) {
		t.Parallel()
		var obj *TraceImportOptionsRequest
		// Should not panic - getters should handle nil receiver gracefully
		defer func() {
			if r := recover(); r != nil {
				t.Errorf("Getter panicked on nil receiver: %v", r)
			}
		}()
		_ = obj.GetInferToolCallLinks() // Should return zero value
	})

}

func TestSettersMarkExplicitTraceImportOptionsRequest(t *testing.T) {
	t.Run("SetIncludeFeedback_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceImportOptionsRequest{}
		var fernTestValueIncludeFeedback *bool

		// Act
		obj.SetIncludeFeedback(fernTestValueIncludeFeedback)

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

	t.Run("SetIncludePendingSpans_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceImportOptionsRequest{}
		var fernTestValueIncludePendingSpans *bool

		// Act
		obj.SetIncludePendingSpans(fernTestValueIncludePendingSpans)

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

	t.Run("SetInferAgentBoundaries_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceImportOptionsRequest{}
		var fernTestValueInferAgentBoundaries *bool

		// Act
		obj.SetInferAgentBoundaries(fernTestValueInferAgentBoundaries)

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

	t.Run("SetInferToolCallLinks_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceImportOptionsRequest{}
		var fernTestValueInferToolCallLinks *bool

		// Act
		obj.SetInferToolCallLinks(fernTestValueInferToolCallLinks)

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

func TestSettersTraceImportScopeRequest(t *testing.T) {
	t.Run("SetExternalIDs", func(t *testing.T) {
		obj := &TraceImportScopeRequest{}
		var fernTestValueExternalIDs []string
		obj.SetExternalIDs(fernTestValueExternalIDs)
		assert.Equal(t, fernTestValueExternalIDs, obj.ExternalIDs)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetSince", func(t *testing.T) {
		obj := &TraceImportScopeRequest{}
		var fernTestValueSince *time.Time
		obj.SetSince(fernTestValueSince)
		assert.Equal(t, fernTestValueSince, obj.Since)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetUntil", func(t *testing.T) {
		obj := &TraceImportScopeRequest{}
		var fernTestValueUntil *time.Time
		obj.SetUntil(fernTestValueUntil)
		assert.Equal(t, fernTestValueUntil, obj.Until)
		assert.NotNil(t, obj.explicitFields)
	})

}

func TestGettersTraceImportScopeRequest(t *testing.T) {
	t.Run("GetExternalIDs", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceImportScopeRequest{}
		var expected []string
		obj.ExternalIDs = expected

		// Act & Assert
		assert.Equal(t, expected, obj.GetExternalIDs(), "getter should return the property value")
	})

	t.Run("GetExternalIDs_NilValue", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceImportScopeRequest{}
		obj.ExternalIDs = nil

		// Act & Assert
		assert.Nil(t, obj.GetExternalIDs(), "getter should return nil when property is nil")
	})

	t.Run("GetExternalIDs_NilReceiver", func(t *testing.T) {
		t.Parallel()
		var obj *TraceImportScopeRequest
		// Should not panic - getters should handle nil receiver gracefully
		defer func() {
			if r := recover(); r != nil {
				t.Errorf("Getter panicked on nil receiver: %v", r)
			}
		}()
		_ = obj.GetExternalIDs() // Should return zero value
	})

	t.Run("GetSince", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceImportScopeRequest{}
		var expected *time.Time
		obj.Since = expected

		// Act & Assert
		assert.Equal(t, expected, obj.GetSince(), "getter should return the property value")
	})

	t.Run("GetSince_NilValue", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceImportScopeRequest{}
		obj.Since = nil

		// Act & Assert
		assert.Nil(t, obj.GetSince(), "getter should return nil when property is nil")
	})

	t.Run("GetSince_NilReceiver", func(t *testing.T) {
		t.Parallel()
		var obj *TraceImportScopeRequest
		// Should not panic - getters should handle nil receiver gracefully
		defer func() {
			if r := recover(); r != nil {
				t.Errorf("Getter panicked on nil receiver: %v", r)
			}
		}()
		_ = obj.GetSince() // Should return zero value
	})

	t.Run("GetUntil", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceImportScopeRequest{}
		var expected *time.Time
		obj.Until = expected

		// Act & Assert
		assert.Equal(t, expected, obj.GetUntil(), "getter should return the property value")
	})

	t.Run("GetUntil_NilValue", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceImportScopeRequest{}
		obj.Until = nil

		// Act & Assert
		assert.Nil(t, obj.GetUntil(), "getter should return nil when property is nil")
	})

	t.Run("GetUntil_NilReceiver", func(t *testing.T) {
		t.Parallel()
		var obj *TraceImportScopeRequest
		// Should not panic - getters should handle nil receiver gracefully
		defer func() {
			if r := recover(); r != nil {
				t.Errorf("Getter panicked on nil receiver: %v", r)
			}
		}()
		_ = obj.GetUntil() // Should return zero value
	})

}

func TestSettersMarkExplicitTraceImportScopeRequest(t *testing.T) {
	t.Run("SetExternalIDs_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceImportScopeRequest{}
		var fernTestValueExternalIDs []string

		// Act
		obj.SetExternalIDs(fernTestValueExternalIDs)

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

	t.Run("SetSince_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceImportScopeRequest{}
		var fernTestValueSince *time.Time

		// Act
		obj.SetSince(fernTestValueSince)

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

	t.Run("SetUntil_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceImportScopeRequest{}
		var fernTestValueUntil *time.Time

		// Act
		obj.SetUntil(fernTestValueUntil)

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

func TestSettersVersionedTraceImportAction(t *testing.T) {
	t.Run("SetExpectedVersion", func(t *testing.T) {
		obj := &VersionedTraceImportAction{}
		var fernTestValueExpectedVersion int
		obj.SetExpectedVersion(fernTestValueExpectedVersion)
		assert.Equal(t, fernTestValueExpectedVersion, obj.ExpectedVersion)
		assert.NotNil(t, obj.explicitFields)
	})

}

func TestGettersVersionedTraceImportAction(t *testing.T) {
	t.Run("GetExpectedVersion", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &VersionedTraceImportAction{}
		var expected int
		obj.ExpectedVersion = expected

		// Act & Assert
		assert.Equal(t, expected, obj.GetExpectedVersion(), "getter should return the property value")
	})

	t.Run("GetExpectedVersion_NilReceiver", func(t *testing.T) {
		t.Parallel()
		var obj *VersionedTraceImportAction
		// Should not panic - getters should handle nil receiver gracefully
		defer func() {
			if r := recover(); r != nil {
				t.Errorf("Getter panicked on nil receiver: %v", r)
			}
		}()
		_ = obj.GetExpectedVersion() // Should return zero value
	})

}

func TestSettersMarkExplicitVersionedTraceImportAction(t *testing.T) {
	t.Run("SetExpectedVersion_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &VersionedTraceImportAction{}
		var fernTestValueExpectedVersion int

		// Act
		obj.SetExpectedVersion(fernTestValueExpectedVersion)

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

func TestJSONMarshalingTraceImportGroupingRequest(t *testing.T) {
	t.Run("MarshalUnmarshal", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceImportGroupingRequest{}

		// Act - Marshal to JSON
		data, err := json.Marshal(obj)
		require.NoError(t, err, "marshaling should succeed")
		assert.NotNil(t, data, "marshaled data should not be nil")
		assert.NotEmpty(t, data, "marshaled data should not be empty")

		// Unmarshal back and verify round-trip
		var unmarshaled TraceImportGroupingRequest
		err = json.Unmarshal(data, &unmarshaled)
		assert.NoError(t, err, "round-trip unmarshal should succeed")
	})

	t.Run("UnmarshalInvalidJSON", func(t *testing.T) {
		t.Parallel()
		var obj TraceImportGroupingRequest
		err := json.Unmarshal([]byte(`{invalid json}`), &obj)
		assert.Error(t, err, "unmarshaling invalid JSON should return an error")
	})

	t.Run("UnmarshalEmptyObject", func(t *testing.T) {
		t.Parallel()
		var obj TraceImportGroupingRequest
		err := json.Unmarshal([]byte(`{}`), &obj)
		assert.NoError(t, err, "unmarshaling empty object should succeed")
	})
}

func TestJSONMarshalingTraceImportOptionsRequest(t *testing.T) {
	t.Run("MarshalUnmarshal", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceImportOptionsRequest{}

		// Act - Marshal to JSON
		data, err := json.Marshal(obj)
		require.NoError(t, err, "marshaling should succeed")
		assert.NotNil(t, data, "marshaled data should not be nil")
		assert.NotEmpty(t, data, "marshaled data should not be empty")

		// Unmarshal back and verify round-trip
		var unmarshaled TraceImportOptionsRequest
		err = json.Unmarshal(data, &unmarshaled)
		assert.NoError(t, err, "round-trip unmarshal should succeed")
	})

	t.Run("UnmarshalInvalidJSON", func(t *testing.T) {
		t.Parallel()
		var obj TraceImportOptionsRequest
		err := json.Unmarshal([]byte(`{invalid json}`), &obj)
		assert.Error(t, err, "unmarshaling invalid JSON should return an error")
	})

	t.Run("UnmarshalEmptyObject", func(t *testing.T) {
		t.Parallel()
		var obj TraceImportOptionsRequest
		err := json.Unmarshal([]byte(`{}`), &obj)
		assert.NoError(t, err, "unmarshaling empty object should succeed")
	})
}

func TestJSONMarshalingTraceImportScopeRequest(t *testing.T) {
	t.Run("MarshalUnmarshal", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TraceImportScopeRequest{}

		// Act - Marshal to JSON
		data, err := json.Marshal(obj)
		require.NoError(t, err, "marshaling should succeed")
		assert.NotNil(t, data, "marshaled data should not be nil")
		assert.NotEmpty(t, data, "marshaled data should not be empty")

		// Unmarshal back and verify round-trip
		var unmarshaled TraceImportScopeRequest
		err = json.Unmarshal(data, &unmarshaled)
		assert.NoError(t, err, "round-trip unmarshal should succeed")
	})

	t.Run("UnmarshalInvalidJSON", func(t *testing.T) {
		t.Parallel()
		var obj TraceImportScopeRequest
		err := json.Unmarshal([]byte(`{invalid json}`), &obj)
		assert.Error(t, err, "unmarshaling invalid JSON should return an error")
	})

	t.Run("UnmarshalEmptyObject", func(t *testing.T) {
		t.Parallel()
		var obj TraceImportScopeRequest
		err := json.Unmarshal([]byte(`{}`), &obj)
		assert.NoError(t, err, "unmarshaling empty object should succeed")
	})
}

func TestJSONMarshalingVersionedTraceImportAction(t *testing.T) {
	t.Run("MarshalUnmarshal", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &VersionedTraceImportAction{}

		// Act - Marshal to JSON
		data, err := json.Marshal(obj)
		require.NoError(t, err, "marshaling should succeed")
		assert.NotNil(t, data, "marshaled data should not be nil")
		assert.NotEmpty(t, data, "marshaled data should not be empty")

		// Unmarshal back and verify round-trip
		var unmarshaled VersionedTraceImportAction
		err = json.Unmarshal(data, &unmarshaled)
		assert.NoError(t, err, "round-trip unmarshal should succeed")
	})

	t.Run("UnmarshalInvalidJSON", func(t *testing.T) {
		t.Parallel()
		var obj VersionedTraceImportAction
		err := json.Unmarshal([]byte(`{invalid json}`), &obj)
		assert.Error(t, err, "unmarshaling invalid JSON should return an error")
	})

	t.Run("UnmarshalEmptyObject", func(t *testing.T) {
		t.Parallel()
		var obj VersionedTraceImportAction
		err := json.Unmarshal([]byte(`{}`), &obj)
		assert.NoError(t, err, "unmarshaling empty object should succeed")
	})
}

func TestStringTraceImportGroupingRequest(t *testing.T) {
	t.Run("StringMethod", func(t *testing.T) {
		t.Parallel()
		obj := &TraceImportGroupingRequest{}
		result := obj.String()
		assert.NotEmpty(t, result, "String() should return a non-empty representation")
	})

	t.Run("StringMethod_NilReceiver", func(t *testing.T) {
		t.Parallel()
		var obj *TraceImportGroupingRequest
		result := obj.String()
		assert.Equal(t, "<nil>", result, "String() should return <nil> for nil receiver")
	})
}

func TestStringTraceImportOptionsRequest(t *testing.T) {
	t.Run("StringMethod", func(t *testing.T) {
		t.Parallel()
		obj := &TraceImportOptionsRequest{}
		result := obj.String()
		assert.NotEmpty(t, result, "String() should return a non-empty representation")
	})

	t.Run("StringMethod_NilReceiver", func(t *testing.T) {
		t.Parallel()
		var obj *TraceImportOptionsRequest
		result := obj.String()
		assert.Equal(t, "<nil>", result, "String() should return <nil> for nil receiver")
	})
}

func TestStringTraceImportScopeRequest(t *testing.T) {
	t.Run("StringMethod", func(t *testing.T) {
		t.Parallel()
		obj := &TraceImportScopeRequest{}
		result := obj.String()
		assert.NotEmpty(t, result, "String() should return a non-empty representation")
	})

	t.Run("StringMethod_NilReceiver", func(t *testing.T) {
		t.Parallel()
		var obj *TraceImportScopeRequest
		result := obj.String()
		assert.Equal(t, "<nil>", result, "String() should return <nil> for nil receiver")
	})
}

func TestStringVersionedTraceImportAction(t *testing.T) {
	t.Run("StringMethod", func(t *testing.T) {
		t.Parallel()
		obj := &VersionedTraceImportAction{}
		result := obj.String()
		assert.NotEmpty(t, result, "String() should return a non-empty representation")
	})

	t.Run("StringMethod_NilReceiver", func(t *testing.T) {
		t.Parallel()
		var obj *VersionedTraceImportAction
		result := obj.String()
		assert.Equal(t, "<nil>", result, "String() should return <nil> for nil receiver")
	})
}

func TestEnumCreateTraceImportRequestMode(t *testing.T) {
	t.Run("NewFromString_historical", func(t *testing.T) {
		t.Parallel()
		val, err := NewCreateTraceImportRequestModeFromString("historical")
		assert.NoError(t, err, "valid enum value should not return error")
		assert.Equal(t, CreateTraceImportRequestMode("historical"), val, "enum value should match expected wire value")
	})

	t.Run("NewFromString_selective", func(t *testing.T) {
		t.Parallel()
		val, err := NewCreateTraceImportRequestModeFromString("selective")
		assert.NoError(t, err, "valid enum value should not return error")
		assert.Equal(t, CreateTraceImportRequestMode("selective"), val, "enum value should match expected wire value")
	})

	t.Run("NewFromString_Invalid", func(t *testing.T) {
		_, err := NewCreateTraceImportRequestModeFromString("invalid_value_that_does_not_exist")
		assert.Error(t, err)
	})

	t.Run("Ptr", func(t *testing.T) {
		val, err := NewCreateTraceImportRequestModeFromString("historical")
		assert.NoError(t, err)
		ptr := val.Ptr()
		assert.NotNil(t, ptr)
		assert.Equal(t, val, *ptr)
	})
}

func TestEnumCreateTraceImportRequestProvider(t *testing.T) {
	t.Run("NewFromString_langsmith", func(t *testing.T) {
		t.Parallel()
		val, err := NewCreateTraceImportRequestProviderFromString("langsmith")
		assert.NoError(t, err, "valid enum value should not return error")
		assert.Equal(t, CreateTraceImportRequestProvider("langsmith"), val, "enum value should match expected wire value")
	})

	t.Run("NewFromString_langfuse", func(t *testing.T) {
		t.Parallel()
		val, err := NewCreateTraceImportRequestProviderFromString("langfuse")
		assert.NoError(t, err, "valid enum value should not return error")
		assert.Equal(t, CreateTraceImportRequestProvider("langfuse"), val, "enum value should match expected wire value")
	})

	t.Run("NewFromString_braintrust", func(t *testing.T) {
		t.Parallel()
		val, err := NewCreateTraceImportRequestProviderFromString("braintrust")
		assert.NoError(t, err, "valid enum value should not return error")
		assert.Equal(t, CreateTraceImportRequestProvider("braintrust"), val, "enum value should match expected wire value")
	})

	t.Run("NewFromString_logfire", func(t *testing.T) {
		t.Parallel()
		val, err := NewCreateTraceImportRequestProviderFromString("logfire")
		assert.NoError(t, err, "valid enum value should not return error")
		assert.Equal(t, CreateTraceImportRequestProvider("logfire"), val, "enum value should match expected wire value")
	})

	t.Run("NewFromString_harbor", func(t *testing.T) {
		t.Parallel()
		val, err := NewCreateTraceImportRequestProviderFromString("harbor")
		assert.NoError(t, err, "valid enum value should not return error")
		assert.Equal(t, CreateTraceImportRequestProvider("harbor"), val, "enum value should match expected wire value")
	})

	t.Run("NewFromString_opentelemetry", func(t *testing.T) {
		t.Parallel()
		val, err := NewCreateTraceImportRequestProviderFromString("opentelemetry")
		assert.NoError(t, err, "valid enum value should not return error")
		assert.Equal(t, CreateTraceImportRequestProvider("opentelemetry"), val, "enum value should match expected wire value")
	})

	t.Run("NewFromString_openinference", func(t *testing.T) {
		t.Parallel()
		val, err := NewCreateTraceImportRequestProviderFromString("openinference")
		assert.NoError(t, err, "valid enum value should not return error")
		assert.Equal(t, CreateTraceImportRequestProvider("openinference"), val, "enum value should match expected wire value")
	})

	t.Run("NewFromString_Invalid", func(t *testing.T) {
		_, err := NewCreateTraceImportRequestProviderFromString("invalid_value_that_does_not_exist")
		assert.Error(t, err)
	})

	t.Run("Ptr", func(t *testing.T) {
		val, err := NewCreateTraceImportRequestProviderFromString("langsmith")
		assert.NoError(t, err)
		ptr := val.Ptr()
		assert.NotNil(t, ptr)
		assert.Equal(t, val, *ptr)
	})
}

func TestEnumPlanTraceImportRequestMode(t *testing.T) {
	t.Run("NewFromString_historical", func(t *testing.T) {
		t.Parallel()
		val, err := NewPlanTraceImportRequestModeFromString("historical")
		assert.NoError(t, err, "valid enum value should not return error")
		assert.Equal(t, PlanTraceImportRequestMode("historical"), val, "enum value should match expected wire value")
	})

	t.Run("NewFromString_selective", func(t *testing.T) {
		t.Parallel()
		val, err := NewPlanTraceImportRequestModeFromString("selective")
		assert.NoError(t, err, "valid enum value should not return error")
		assert.Equal(t, PlanTraceImportRequestMode("selective"), val, "enum value should match expected wire value")
	})

	t.Run("NewFromString_Invalid", func(t *testing.T) {
		_, err := NewPlanTraceImportRequestModeFromString("invalid_value_that_does_not_exist")
		assert.Error(t, err)
	})

	t.Run("Ptr", func(t *testing.T) {
		val, err := NewPlanTraceImportRequestModeFromString("historical")
		assert.NoError(t, err)
		ptr := val.Ptr()
		assert.NotNil(t, ptr)
		assert.Equal(t, val, *ptr)
	})
}

func TestEnumPlanTraceImportRequestProvider(t *testing.T) {
	t.Run("NewFromString_langsmith", func(t *testing.T) {
		t.Parallel()
		val, err := NewPlanTraceImportRequestProviderFromString("langsmith")
		assert.NoError(t, err, "valid enum value should not return error")
		assert.Equal(t, PlanTraceImportRequestProvider("langsmith"), val, "enum value should match expected wire value")
	})

	t.Run("NewFromString_langfuse", func(t *testing.T) {
		t.Parallel()
		val, err := NewPlanTraceImportRequestProviderFromString("langfuse")
		assert.NoError(t, err, "valid enum value should not return error")
		assert.Equal(t, PlanTraceImportRequestProvider("langfuse"), val, "enum value should match expected wire value")
	})

	t.Run("NewFromString_braintrust", func(t *testing.T) {
		t.Parallel()
		val, err := NewPlanTraceImportRequestProviderFromString("braintrust")
		assert.NoError(t, err, "valid enum value should not return error")
		assert.Equal(t, PlanTraceImportRequestProvider("braintrust"), val, "enum value should match expected wire value")
	})

	t.Run("NewFromString_logfire", func(t *testing.T) {
		t.Parallel()
		val, err := NewPlanTraceImportRequestProviderFromString("logfire")
		assert.NoError(t, err, "valid enum value should not return error")
		assert.Equal(t, PlanTraceImportRequestProvider("logfire"), val, "enum value should match expected wire value")
	})

	t.Run("NewFromString_harbor", func(t *testing.T) {
		t.Parallel()
		val, err := NewPlanTraceImportRequestProviderFromString("harbor")
		assert.NoError(t, err, "valid enum value should not return error")
		assert.Equal(t, PlanTraceImportRequestProvider("harbor"), val, "enum value should match expected wire value")
	})

	t.Run("NewFromString_opentelemetry", func(t *testing.T) {
		t.Parallel()
		val, err := NewPlanTraceImportRequestProviderFromString("opentelemetry")
		assert.NoError(t, err, "valid enum value should not return error")
		assert.Equal(t, PlanTraceImportRequestProvider("opentelemetry"), val, "enum value should match expected wire value")
	})

	t.Run("NewFromString_openinference", func(t *testing.T) {
		t.Parallel()
		val, err := NewPlanTraceImportRequestProviderFromString("openinference")
		assert.NoError(t, err, "valid enum value should not return error")
		assert.Equal(t, PlanTraceImportRequestProvider("openinference"), val, "enum value should match expected wire value")
	})

	t.Run("NewFromString_Invalid", func(t *testing.T) {
		_, err := NewPlanTraceImportRequestProviderFromString("invalid_value_that_does_not_exist")
		assert.Error(t, err)
	})

	t.Run("Ptr", func(t *testing.T) {
		val, err := NewPlanTraceImportRequestProviderFromString("langsmith")
		assert.NoError(t, err)
		ptr := val.Ptr()
		assert.NotNil(t, ptr)
		assert.Equal(t, val, *ptr)
	})
}

func TestExtraPropertiesTraceImportGroupingRequest(t *testing.T) {
	t.Run("GetExtraProperties", func(t *testing.T) {
		t.Parallel()
		obj := &TraceImportGroupingRequest{}
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
		var obj *TraceImportGroupingRequest
		extraProps := obj.GetExtraProperties()
		assert.Nil(t, extraProps, "nil receiver should return nil without panicking")
	})
}

func TestExtraPropertiesTraceImportOptionsRequest(t *testing.T) {
	t.Run("GetExtraProperties", func(t *testing.T) {
		t.Parallel()
		obj := &TraceImportOptionsRequest{}
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
		var obj *TraceImportOptionsRequest
		extraProps := obj.GetExtraProperties()
		assert.Nil(t, extraProps, "nil receiver should return nil without panicking")
	})
}

func TestExtraPropertiesTraceImportScopeRequest(t *testing.T) {
	t.Run("GetExtraProperties", func(t *testing.T) {
		t.Parallel()
		obj := &TraceImportScopeRequest{}
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
		var obj *TraceImportScopeRequest
		extraProps := obj.GetExtraProperties()
		assert.Nil(t, extraProps, "nil receiver should return nil without panicking")
	})
}

func TestExtraPropertiesVersionedTraceImportAction(t *testing.T) {
	t.Run("GetExtraProperties", func(t *testing.T) {
		t.Parallel()
		obj := &VersionedTraceImportAction{}
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
		var obj *VersionedTraceImportAction
		extraProps := obj.GetExtraProperties()
		assert.Nil(t, extraProps, "nil receiver should return nil without panicking")
	})
}
