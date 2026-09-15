
package api

import (
	json "encoding/json"
	assert "github.com/stretchr/testify/assert"
	require "github.com/stretchr/testify/require"
	testing "testing"
)

func TestSettersScheduleInput(t *testing.T) {
	t.Run("SetIdempotencyKey", func(t *testing.T) {
		obj := &ScheduleInput{}
		var fernTestValueIdempotencyKey *string
		obj.SetIdempotencyKey(fernTestValueIdempotencyKey)
		assert.Equal(t, fernTestValueIdempotencyKey, obj.IdempotencyKey)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetInput", func(t *testing.T) {
		obj := &ScheduleInput{}
		var fernTestValueInput map[string]any
		obj.SetInput(fernTestValueInput)
		assert.Equal(t, fernTestValueInput, obj.Input)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetIntervalSeconds", func(t *testing.T) {
		obj := &ScheduleInput{}
		var fernTestValueIntervalSeconds int
		obj.SetIntervalSeconds(fernTestValueIntervalSeconds)
		assert.Equal(t, fernTestValueIntervalSeconds, obj.IntervalSeconds)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetSessionID", func(t *testing.T) {
		obj := &ScheduleInput{}
		var fernTestValueSessionID string
		obj.SetSessionID(fernTestValueSessionID)
		assert.Equal(t, fernTestValueSessionID, obj.SessionID)
		assert.NotNil(t, obj.explicitFields)
	})

}

func TestSettersMarkExplicitScheduleInput(t *testing.T) {
	t.Run("SetIdempotencyKey_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &ScheduleInput{}
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
		obj := &ScheduleInput{}
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

	t.Run("SetIntervalSeconds_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &ScheduleInput{}
		var fernTestValueIntervalSeconds int

		// Act
		obj.SetIntervalSeconds(fernTestValueIntervalSeconds)

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
		obj := &ScheduleInput{}
		var fernTestValueSessionID string

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

}

func TestSettersListSchedulesRunSchedulesRequest(t *testing.T) {
	t.Run("SetSessionID", func(t *testing.T) {
		obj := &ListSchedulesRunSchedulesRequest{}
		var fernTestValueSessionID *string
		obj.SetSessionID(fernTestValueSessionID)
		assert.Equal(t, fernTestValueSessionID, obj.SessionID)
		assert.NotNil(t, obj.explicitFields)
	})

}

func TestSettersMarkExplicitListSchedulesRunSchedulesRequest(t *testing.T) {
	t.Run("SetSessionID_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &ListSchedulesRunSchedulesRequest{}
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

}

func TestSettersPauseInput(t *testing.T) {
	t.Run("SetPaused", func(t *testing.T) {
		obj := &PauseInput{}
		var fernTestValuePaused bool
		obj.SetPaused(fernTestValuePaused)
		assert.Equal(t, fernTestValuePaused, obj.Paused)
		assert.NotNil(t, obj.explicitFields)
	})

}

func TestSettersMarkExplicitPauseInput(t *testing.T) {
	t.Run("SetPaused_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &PauseInput{}
		var fernTestValuePaused bool

		// Act
		obj.SetPaused(fernTestValuePaused)

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
