
package api

import (
	json "encoding/json"
	assert "github.com/stretchr/testify/assert"
	require "github.com/stretchr/testify/require"
	testing "testing"
)

func TestSettersTurnInput(t *testing.T) {
	t.Run("SetCapabilityGrants", func(t *testing.T) {
		obj := &TurnInput{}
		var fernTestValueCapabilityGrants []string
		obj.SetCapabilityGrants(fernTestValueCapabilityGrants)
		assert.Equal(t, fernTestValueCapabilityGrants, obj.CapabilityGrants)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetComputeProviderID", func(t *testing.T) {
		obj := &TurnInput{}
		var fernTestValueComputeProviderID *string
		obj.SetComputeProviderID(fernTestValueComputeProviderID)
		assert.Equal(t, fernTestValueComputeProviderID, obj.ComputeProviderID)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetDeliveryMode", func(t *testing.T) {
		obj := &TurnInput{}
		var fernTestValueDeliveryMode *TurnInputDeliveryMode
		obj.SetDeliveryMode(fernTestValueDeliveryMode)
		assert.Equal(t, fernTestValueDeliveryMode, obj.DeliveryMode)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetExecutionEnvironment", func(t *testing.T) {
		obj := &TurnInput{}
		var fernTestValueExecutionEnvironment *TurnInputExecutionEnvironment
		obj.SetExecutionEnvironment(fernTestValueExecutionEnvironment)
		assert.Equal(t, fernTestValueExecutionEnvironment, obj.ExecutionEnvironment)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetFileIDs", func(t *testing.T) {
		obj := &TurnInput{}
		var fernTestValueFileIDs []string
		obj.SetFileIDs(fernTestValueFileIDs)
		assert.Equal(t, fernTestValueFileIDs, obj.FileIDs)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetIdempotencyKey", func(t *testing.T) {
		obj := &TurnInput{}
		var fernTestValueIdempotencyKey string
		obj.SetIdempotencyKey(fernTestValueIdempotencyKey)
		assert.Equal(t, fernTestValueIdempotencyKey, obj.IdempotencyKey)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetInput", func(t *testing.T) {
		obj := &TurnInput{}
		var fernTestValueInput map[string]any
		obj.SetInput(fernTestValueInput)
		assert.Equal(t, fernTestValueInput, obj.Input)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetProductContext", func(t *testing.T) {
		obj := &TurnInput{}
		var fernTestValueProductContext map[string]any
		obj.SetProductContext(fernTestValueProductContext)
		assert.Equal(t, fernTestValueProductContext, obj.ProductContext)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetRunMode", func(t *testing.T) {
		obj := &TurnInput{}
		var fernTestValueRunMode *TurnInputRunMode
		obj.SetRunMode(fernTestValueRunMode)
		assert.Equal(t, fernTestValueRunMode, obj.RunMode)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetToolProviderRefs", func(t *testing.T) {
		obj := &TurnInput{}
		var fernTestValueToolProviderRefs []map[string]any
		obj.SetToolProviderRefs(fernTestValueToolProviderRefs)
		assert.Equal(t, fernTestValueToolProviderRefs, obj.ToolProviderRefs)
		assert.NotNil(t, obj.explicitFields)
	})

}

func TestSettersMarkExplicitTurnInput(t *testing.T) {
	t.Run("SetCapabilityGrants_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TurnInput{}
		var fernTestValueCapabilityGrants []string

		// Act
		obj.SetCapabilityGrants(fernTestValueCapabilityGrants)

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

	t.Run("SetComputeProviderID_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TurnInput{}
		var fernTestValueComputeProviderID *string

		// Act
		obj.SetComputeProviderID(fernTestValueComputeProviderID)

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

	t.Run("SetDeliveryMode_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TurnInput{}
		var fernTestValueDeliveryMode *TurnInputDeliveryMode

		// Act
		obj.SetDeliveryMode(fernTestValueDeliveryMode)

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

	t.Run("SetExecutionEnvironment_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TurnInput{}
		var fernTestValueExecutionEnvironment *TurnInputExecutionEnvironment

		// Act
		obj.SetExecutionEnvironment(fernTestValueExecutionEnvironment)

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

	t.Run("SetFileIDs_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TurnInput{}
		var fernTestValueFileIDs []string

		// Act
		obj.SetFileIDs(fernTestValueFileIDs)

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

	t.Run("SetIdempotencyKey_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TurnInput{}
		var fernTestValueIdempotencyKey string

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
		obj := &TurnInput{}
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

	t.Run("SetProductContext_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TurnInput{}
		var fernTestValueProductContext map[string]any

		// Act
		obj.SetProductContext(fernTestValueProductContext)

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

	t.Run("SetRunMode_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TurnInput{}
		var fernTestValueRunMode *TurnInputRunMode

		// Act
		obj.SetRunMode(fernTestValueRunMode)

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

	t.Run("SetToolProviderRefs_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &TurnInput{}
		var fernTestValueToolProviderRefs []map[string]any

		// Act
		obj.SetToolProviderRefs(fernTestValueToolProviderRefs)

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

func TestSettersBranchInput(t *testing.T) {
	t.Run("SetIdempotencyKey", func(t *testing.T) {
		obj := &BranchInput{}
		var fernTestValueIdempotencyKey string
		obj.SetIdempotencyKey(fernTestValueIdempotencyKey)
		assert.Equal(t, fernTestValueIdempotencyKey, obj.IdempotencyKey)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetSourceRunID", func(t *testing.T) {
		obj := &BranchInput{}
		var fernTestValueSourceRunID string
		obj.SetSourceRunID(fernTestValueSourceRunID)
		assert.Equal(t, fernTestValueSourceRunID, obj.SourceRunID)
		assert.NotNil(t, obj.explicitFields)
	})

}

func TestSettersMarkExplicitBranchInput(t *testing.T) {
	t.Run("SetIdempotencyKey_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &BranchInput{}
		var fernTestValueIdempotencyKey string

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

	t.Run("SetSourceRunID_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &BranchInput{}
		var fernTestValueSourceRunID string

		// Act
		obj.SetSourceRunID(fernTestValueSourceRunID)

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

func TestSettersSessionInput(t *testing.T) {
	t.Run("SetConversationID", func(t *testing.T) {
		obj := &SessionInput{}
		var fernTestValueConversationID *string
		obj.SetConversationID(fernTestValueConversationID)
		assert.Equal(t, fernTestValueConversationID, obj.ConversationID)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetFinalOutputSchema", func(t *testing.T) {
		obj := &SessionInput{}
		var fernTestValueFinalOutputSchema map[string]any
		obj.SetFinalOutputSchema(fernTestValueFinalOutputSchema)
		assert.Equal(t, fernTestValueFinalOutputSchema, obj.FinalOutputSchema)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetReasoningEffort", func(t *testing.T) {
		obj := &SessionInput{}
		var fernTestValueReasoningEffort *SessionInputReasoningEffort
		obj.SetReasoningEffort(fernTestValueReasoningEffort)
		assert.Equal(t, fernTestValueReasoningEffort, obj.ReasoningEffort)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetTenantID", func(t *testing.T) {
		obj := &SessionInput{}
		var fernTestValueTenantID string
		obj.SetTenantID(fernTestValueTenantID)
		assert.Equal(t, fernTestValueTenantID, obj.TenantID)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetUserID", func(t *testing.T) {
		obj := &SessionInput{}
		var fernTestValueUserID string
		obj.SetUserID(fernTestValueUserID)
		assert.Equal(t, fernTestValueUserID, obj.UserID)
		assert.NotNil(t, obj.explicitFields)
	})

}

func TestSettersMarkExplicitSessionInput(t *testing.T) {
	t.Run("SetConversationID_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &SessionInput{}
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

	t.Run("SetFinalOutputSchema_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &SessionInput{}
		var fernTestValueFinalOutputSchema map[string]any

		// Act
		obj.SetFinalOutputSchema(fernTestValueFinalOutputSchema)

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

	t.Run("SetReasoningEffort_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &SessionInput{}
		var fernTestValueReasoningEffort *SessionInputReasoningEffort

		// Act
		obj.SetReasoningEffort(fernTestValueReasoningEffort)

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
		obj := &SessionInput{}
		var fernTestValueTenantID string

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

	t.Run("SetUserID_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &SessionInput{}
		var fernTestValueUserID string

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

func TestSettersListExecutionSessionsRequest(t *testing.T) {
	t.Run("SetHarnessID", func(t *testing.T) {
		obj := &ListExecutionSessionsRequest{}
		var fernTestValueHarnessID *string
		obj.SetHarnessID(fernTestValueHarnessID)
		assert.Equal(t, fernTestValueHarnessID, obj.HarnessID)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetAfter", func(t *testing.T) {
		obj := &ListExecutionSessionsRequest{}
		var fernTestValueAfter *string
		obj.SetAfter(fernTestValueAfter)
		assert.Equal(t, fernTestValueAfter, obj.After)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetLimit", func(t *testing.T) {
		obj := &ListExecutionSessionsRequest{}
		var fernTestValueLimit *int
		obj.SetLimit(fernTestValueLimit)
		assert.Equal(t, fernTestValueLimit, obj.Limit)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetAgentSlug", func(t *testing.T) {
		obj := &ListExecutionSessionsRequest{}
		var fernTestValueAgentSlug *string
		obj.SetAgentSlug(fernTestValueAgentSlug)
		assert.Equal(t, fernTestValueAgentSlug, obj.AgentSlug)
		assert.NotNil(t, obj.explicitFields)
	})

}

func TestSettersMarkExplicitListExecutionSessionsRequest(t *testing.T) {
	t.Run("SetHarnessID_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &ListExecutionSessionsRequest{}
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

	t.Run("SetAfter_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &ListExecutionSessionsRequest{}
		var fernTestValueAfter *string

		// Act
		obj.SetAfter(fernTestValueAfter)

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
		obj := &ListExecutionSessionsRequest{}
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

	t.Run("SetAgentSlug_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &ListExecutionSessionsRequest{}
		var fernTestValueAgentSlug *string

		// Act
		obj.SetAgentSlug(fernTestValueAgentSlug)

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

func TestSettersUploadFileExecutionSessionsRequest(t *testing.T) {
	t.Run("SetFilename", func(t *testing.T) {
		obj := &UploadFileExecutionSessionsRequest{}
		var fernTestValueFilename string
		obj.SetFilename(fernTestValueFilename)
		assert.Equal(t, fernTestValueFilename, obj.Filename)
		assert.NotNil(t, obj.explicitFields)
	})

}

func TestSettersMarkExplicitUploadFileExecutionSessionsRequest(t *testing.T) {
	t.Run("SetFilename_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &UploadFileExecutionSessionsRequest{}
		var fernTestValueFilename string

		// Act
		obj.SetFilename(fernTestValueFilename)

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

func TestEnumSessionInputReasoningEffort(t *testing.T) {
	t.Run("NewFromString_none", func(t *testing.T) {
		t.Parallel()
		val, err := NewSessionInputReasoningEffortFromString("none")
		assert.NoError(t, err, "valid enum value should not return error")
		assert.Equal(t, SessionInputReasoningEffort("none"), val, "enum value should match expected wire value")
	})

	t.Run("NewFromString_minimal", func(t *testing.T) {
		t.Parallel()
		val, err := NewSessionInputReasoningEffortFromString("minimal")
		assert.NoError(t, err, "valid enum value should not return error")
		assert.Equal(t, SessionInputReasoningEffort("minimal"), val, "enum value should match expected wire value")
	})

	t.Run("NewFromString_low", func(t *testing.T) {
		t.Parallel()
		val, err := NewSessionInputReasoningEffortFromString("low")
		assert.NoError(t, err, "valid enum value should not return error")
		assert.Equal(t, SessionInputReasoningEffort("low"), val, "enum value should match expected wire value")
	})

	t.Run("NewFromString_medium", func(t *testing.T) {
		t.Parallel()
		val, err := NewSessionInputReasoningEffortFromString("medium")
		assert.NoError(t, err, "valid enum value should not return error")
		assert.Equal(t, SessionInputReasoningEffort("medium"), val, "enum value should match expected wire value")
	})

	t.Run("NewFromString_high", func(t *testing.T) {
		t.Parallel()
		val, err := NewSessionInputReasoningEffortFromString("high")
		assert.NoError(t, err, "valid enum value should not return error")
		assert.Equal(t, SessionInputReasoningEffort("high"), val, "enum value should match expected wire value")
	})

	t.Run("NewFromString_xhigh", func(t *testing.T) {
		t.Parallel()
		val, err := NewSessionInputReasoningEffortFromString("xhigh")
		assert.NoError(t, err, "valid enum value should not return error")
		assert.Equal(t, SessionInputReasoningEffort("xhigh"), val, "enum value should match expected wire value")
	})

	t.Run("NewFromString_Invalid", func(t *testing.T) {
		_, err := NewSessionInputReasoningEffortFromString("invalid_value_that_does_not_exist")
		assert.Error(t, err)
	})

	t.Run("Ptr", func(t *testing.T) {
		val, err := NewSessionInputReasoningEffortFromString("none")
		assert.NoError(t, err)
		ptr := val.Ptr()
		assert.NotNil(t, ptr)
		assert.Equal(t, val, *ptr)
	})
}

func TestEnumTurnInputDeliveryMode(t *testing.T) {
	t.Run("NewFromString_steer", func(t *testing.T) {
		t.Parallel()
		val, err := NewTurnInputDeliveryModeFromString("steer")
		assert.NoError(t, err, "valid enum value should not return error")
		assert.Equal(t, TurnInputDeliveryMode("steer"), val, "enum value should match expected wire value")
	})

	t.Run("NewFromString_queue", func(t *testing.T) {
		t.Parallel()
		val, err := NewTurnInputDeliveryModeFromString("queue")
		assert.NoError(t, err, "valid enum value should not return error")
		assert.Equal(t, TurnInputDeliveryMode("queue"), val, "enum value should match expected wire value")
	})

	t.Run("NewFromString_Invalid", func(t *testing.T) {
		_, err := NewTurnInputDeliveryModeFromString("invalid_value_that_does_not_exist")
		assert.Error(t, err)
	})

	t.Run("Ptr", func(t *testing.T) {
		val, err := NewTurnInputDeliveryModeFromString("steer")
		assert.NoError(t, err)
		ptr := val.Ptr()
		assert.NotNil(t, ptr)
		assert.Equal(t, val, *ptr)
	})
}

func TestEnumTurnInputExecutionEnvironment(t *testing.T) {
	t.Run("NewFromString_managed", func(t *testing.T) {
		t.Parallel()
		val, err := NewTurnInputExecutionEnvironmentFromString("managed")
		assert.NoError(t, err, "valid enum value should not return error")
		assert.Equal(t, TurnInputExecutionEnvironment("managed"), val, "enum value should match expected wire value")
	})

	t.Run("NewFromString_local", func(t *testing.T) {
		t.Parallel()
		val, err := NewTurnInputExecutionEnvironmentFromString("local")
		assert.NoError(t, err, "valid enum value should not return error")
		assert.Equal(t, TurnInputExecutionEnvironment("local"), val, "enum value should match expected wire value")
	})

	t.Run("NewFromString_Invalid", func(t *testing.T) {
		_, err := NewTurnInputExecutionEnvironmentFromString("invalid_value_that_does_not_exist")
		assert.Error(t, err)
	})

	t.Run("Ptr", func(t *testing.T) {
		val, err := NewTurnInputExecutionEnvironmentFromString("managed")
		assert.NoError(t, err)
		ptr := val.Ptr()
		assert.NotNil(t, ptr)
		assert.Equal(t, val, *ptr)
	})
}

func TestEnumTurnInputRunMode(t *testing.T) {
	t.Run("NewFromString_interactive", func(t *testing.T) {
		t.Parallel()
		val, err := NewTurnInputRunModeFromString("interactive")
		assert.NoError(t, err, "valid enum value should not return error")
		assert.Equal(t, TurnInputRunMode("interactive"), val, "enum value should match expected wire value")
	})

	t.Run("NewFromString_background_subagent", func(t *testing.T) {
		t.Parallel()
		val, err := NewTurnInputRunModeFromString("background_subagent")
		assert.NoError(t, err, "valid enum value should not return error")
		assert.Equal(t, TurnInputRunMode("background_subagent"), val, "enum value should match expected wire value")
	})

	t.Run("NewFromString_sandbox_execution", func(t *testing.T) {
		t.Parallel()
		val, err := NewTurnInputRunModeFromString("sandbox_execution")
		assert.NoError(t, err, "valid enum value should not return error")
		assert.Equal(t, TurnInputRunMode("sandbox_execution"), val, "enum value should match expected wire value")
	})

	t.Run("NewFromString_Invalid", func(t *testing.T) {
		_, err := NewTurnInputRunModeFromString("invalid_value_that_does_not_exist")
		assert.Error(t, err)
	})

	t.Run("Ptr", func(t *testing.T) {
		val, err := NewTurnInputRunModeFromString("interactive")
		assert.NoError(t, err)
		ptr := val.Ptr()
		assert.NotNil(t, ptr)
		assert.Equal(t, val, *ptr)
	})
}
