
package api

import (
	json "encoding/json"
	assert "github.com/stretchr/testify/assert"
	require "github.com/stretchr/testify/require"
	testing "testing"
	time "time"
)

func TestSettersListMessagesConversationsRequest(t *testing.T) {
	t.Run("SetAccountID", func(t *testing.T) {
		obj := &ListMessagesConversationsRequest{}
		var fernTestValueAccountID string
		obj.SetAccountID(fernTestValueAccountID)
		assert.Equal(t, fernTestValueAccountID, obj.AccountID)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetLimit", func(t *testing.T) {
		obj := &ListMessagesConversationsRequest{}
		var fernTestValueLimit *int
		obj.SetLimit(fernTestValueLimit)
		assert.Equal(t, fernTestValueLimit, obj.Limit)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetCursor", func(t *testing.T) {
		obj := &ListMessagesConversationsRequest{}
		var fernTestValueCursor *string
		obj.SetCursor(fernTestValueCursor)
		assert.Equal(t, fernTestValueCursor, obj.Cursor)
		assert.NotNil(t, obj.explicitFields)
	})

}

func TestSettersMarkExplicitListMessagesConversationsRequest(t *testing.T) {
	t.Run("SetAccountID_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &ListMessagesConversationsRequest{}
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

	t.Run("SetLimit_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &ListMessagesConversationsRequest{}
		var fernTestValueLimit *int

		// Act
		obj.SetLimit(fernTestValueLimit)

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

	t.Run("SetCursor_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &ListMessagesConversationsRequest{}
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

func TestSettersDeliveredMessage(t *testing.T) {
	t.Run("SetAccountID", func(t *testing.T) {
		obj := &DeliveredMessage{}
		var fernTestValueAccountID string
		obj.SetAccountID(fernTestValueAccountID)
		assert.Equal(t, fernTestValueAccountID, obj.AccountID)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetContent", func(t *testing.T) {
		obj := &DeliveredMessage{}
		var fernTestValueContent string
		obj.SetContent(fernTestValueContent)
		assert.Equal(t, fernTestValueContent, obj.Content)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetDeliveredAt", func(t *testing.T) {
		obj := &DeliveredMessage{}
		var fernTestValueDeliveredAt time.Time
		obj.SetDeliveredAt(fernTestValueDeliveredAt)
		assert.Equal(t, fernTestValueDeliveredAt, obj.DeliveredAt)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetEnvironment", func(t *testing.T) {
		obj := &DeliveredMessage{}
		var fernTestValueEnvironment *DeliveredMessageEnvironment
		obj.SetEnvironment(fernTestValueEnvironment)
		assert.Equal(t, fernTestValueEnvironment, obj.Environment)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetMessageID", func(t *testing.T) {
		obj := &DeliveredMessage{}
		var fernTestValueMessageID string
		obj.SetMessageID(fernTestValueMessageID)
		assert.Equal(t, fernTestValueMessageID, obj.MessageID)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetPosition", func(t *testing.T) {
		obj := &DeliveredMessage{}
		var fernTestValuePosition int
		obj.SetPosition(fernTestValuePosition)
		assert.Equal(t, fernTestValuePosition, obj.Position)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetRole", func(t *testing.T) {
		obj := &DeliveredMessage{}
		var fernTestValueRole DeliveredMessageRole
		obj.SetRole(fernTestValueRole)
		assert.Equal(t, fernTestValueRole, obj.Role)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetTraceID", func(t *testing.T) {
		obj := &DeliveredMessage{}
		var fernTestValueTraceID *string
		obj.SetTraceID(fernTestValueTraceID)
		assert.Equal(t, fernTestValueTraceID, obj.TraceID)
		assert.NotNil(t, obj.explicitFields)
	})

}

func TestSettersMarkExplicitDeliveredMessage(t *testing.T) {
	t.Run("SetAccountID_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &DeliveredMessage{}
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

	t.Run("SetContent_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &DeliveredMessage{}
		var fernTestValueContent string

		// Act
		obj.SetContent(fernTestValueContent)

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

	t.Run("SetDeliveredAt_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &DeliveredMessage{}
		var fernTestValueDeliveredAt time.Time

		// Act
		obj.SetDeliveredAt(fernTestValueDeliveredAt)

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

	t.Run("SetEnvironment_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &DeliveredMessage{}
		var fernTestValueEnvironment *DeliveredMessageEnvironment

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

	t.Run("SetMessageID_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &DeliveredMessage{}
		var fernTestValueMessageID string

		// Act
		obj.SetMessageID(fernTestValueMessageID)

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

	t.Run("SetPosition_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &DeliveredMessage{}
		var fernTestValuePosition int

		// Act
		obj.SetPosition(fernTestValuePosition)

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

	t.Run("SetRole_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &DeliveredMessage{}
		var fernTestValueRole DeliveredMessageRole

		// Act
		obj.SetRole(fernTestValueRole)

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
		obj := &DeliveredMessage{}
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

func TestEnumDeliveredMessageEnvironment(t *testing.T) {
	t.Run("NewFromString_production", func(t *testing.T) {
		t.Parallel()
		val, err := NewDeliveredMessageEnvironmentFromString("production")
		assert.NoError(t, err, "valid enum value should not return error")
		assert.Equal(t, DeliveredMessageEnvironment("production"), val, "enum value should match expected wire value")
	})

	t.Run("NewFromString_staging", func(t *testing.T) {
		t.Parallel()
		val, err := NewDeliveredMessageEnvironmentFromString("staging")
		assert.NoError(t, err, "valid enum value should not return error")
		assert.Equal(t, DeliveredMessageEnvironment("staging"), val, "enum value should match expected wire value")
	})

	t.Run("NewFromString_development", func(t *testing.T) {
		t.Parallel()
		val, err := NewDeliveredMessageEnvironmentFromString("development")
		assert.NoError(t, err, "valid enum value should not return error")
		assert.Equal(t, DeliveredMessageEnvironment("development"), val, "enum value should match expected wire value")
	})

	t.Run("NewFromString_Invalid", func(t *testing.T) {
		_, err := NewDeliveredMessageEnvironmentFromString("invalid_value_that_does_not_exist")
		assert.Error(t, err)
	})

	t.Run("Ptr", func(t *testing.T) {
		val, err := NewDeliveredMessageEnvironmentFromString("production")
		assert.NoError(t, err)
		ptr := val.Ptr()
		assert.NotNil(t, ptr)
		assert.Equal(t, val, *ptr)
	})
}

func TestEnumDeliveredMessageRole(t *testing.T) {
	t.Run("NewFromString_user", func(t *testing.T) {
		t.Parallel()
		val, err := NewDeliveredMessageRoleFromString("user")
		assert.NoError(t, err, "valid enum value should not return error")
		assert.Equal(t, DeliveredMessageRole("user"), val, "enum value should match expected wire value")
	})

	t.Run("NewFromString_assistant", func(t *testing.T) {
		t.Parallel()
		val, err := NewDeliveredMessageRoleFromString("assistant")
		assert.NoError(t, err, "valid enum value should not return error")
		assert.Equal(t, DeliveredMessageRole("assistant"), val, "enum value should match expected wire value")
	})

	t.Run("NewFromString_tool", func(t *testing.T) {
		t.Parallel()
		val, err := NewDeliveredMessageRoleFromString("tool")
		assert.NoError(t, err, "valid enum value should not return error")
		assert.Equal(t, DeliveredMessageRole("tool"), val, "enum value should match expected wire value")
	})

	t.Run("NewFromString_Invalid", func(t *testing.T) {
		_, err := NewDeliveredMessageRoleFromString("invalid_value_that_does_not_exist")
		assert.Error(t, err)
	})

	t.Run("Ptr", func(t *testing.T) {
		val, err := NewDeliveredMessageRoleFromString("user")
		assert.NoError(t, err)
		ptr := val.Ptr()
		assert.NotNil(t, ptr)
		assert.Equal(t, val, *ptr)
	})
}
