
package api

import (
	json "encoding/json"
	assert "github.com/stretchr/testify/assert"
	require "github.com/stretchr/testify/require"
	testing "testing"
)

func TestSettersWebhookInput(t *testing.T) {
	t.Run("SetIdempotencyKey", func(t *testing.T) {
		obj := &WebhookInput{}
		var fernTestValueIdempotencyKey *string
		obj.SetIdempotencyKey(fernTestValueIdempotencyKey)
		assert.Equal(t, fernTestValueIdempotencyKey, obj.IdempotencyKey)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetRunID", func(t *testing.T) {
		obj := &WebhookInput{}
		var fernTestValueRunID string
		obj.SetRunID(fernTestValueRunID)
		assert.Equal(t, fernTestValueRunID, obj.RunID)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetURL", func(t *testing.T) {
		obj := &WebhookInput{}
		var fernTestValueURL string
		obj.SetURL(fernTestValueURL)
		assert.Equal(t, fernTestValueURL, obj.URL)
		assert.NotNil(t, obj.explicitFields)
	})

}

func TestSettersMarkExplicitWebhookInput(t *testing.T) {
	t.Run("SetIdempotencyKey_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &WebhookInput{}
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

	t.Run("SetRunID_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &WebhookInput{}
		var fernTestValueRunID string

		// Act
		obj.SetRunID(fernTestValueRunID)

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

	t.Run("SetURL_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &WebhookInput{}
		var fernTestValueURL string

		// Act
		obj.SetURL(fernTestValueURL)

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
