
package api

import (
	json "encoding/json"
	assert "github.com/stretchr/testify/assert"
	require "github.com/stretchr/testify/require"
	testing "testing"
)

func TestSettersCreateReleaseWatchRequest(t *testing.T) {
	t.Run("SetAgentID", func(t *testing.T) {
		obj := &CreateReleaseWatchRequest{}
		var fernTestValueAgentID *string
		obj.SetAgentID(fernTestValueAgentID)
		assert.Equal(t, fernTestValueAgentID, obj.AgentID)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetBackfillWindow", func(t *testing.T) {
		obj := &CreateReleaseWatchRequest{}
		var fernTestValueBackfillWindow *string
		obj.SetBackfillWindow(fernTestValueBackfillWindow)
		assert.Equal(t, fernTestValueBackfillWindow, obj.BackfillWindow)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetFilterExpression", func(t *testing.T) {
		obj := &CreateReleaseWatchRequest{}
		var fernTestValueFilterExpression *string
		obj.SetFilterExpression(fernTestValueFilterExpression)
		assert.Equal(t, fernTestValueFilterExpression, obj.FilterExpression)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetIssueID", func(t *testing.T) {
		obj := &CreateReleaseWatchRequest{}
		var fernTestValueIssueID *string
		obj.SetIssueID(fernTestValueIssueID)
		assert.Equal(t, fernTestValueIssueID, obj.IssueID)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetIssueTitle", func(t *testing.T) {
		obj := &CreateReleaseWatchRequest{}
		var fernTestValueIssueTitle *string
		obj.SetIssueTitle(fernTestValueIssueTitle)
		assert.Equal(t, fernTestValueIssueTitle, obj.IssueTitle)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetReleaseID", func(t *testing.T) {
		obj := &CreateReleaseWatchRequest{}
		var fernTestValueReleaseID *string
		obj.SetReleaseID(fernTestValueReleaseID)
		assert.Equal(t, fernTestValueReleaseID, obj.ReleaseID)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetRuleID", func(t *testing.T) {
		obj := &CreateReleaseWatchRequest{}
		var fernTestValueRuleID *string
		obj.SetRuleID(fernTestValueRuleID)
		assert.Equal(t, fernTestValueRuleID, obj.RuleID)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetRuleName", func(t *testing.T) {
		obj := &CreateReleaseWatchRequest{}
		var fernTestValueRuleName *string
		obj.SetRuleName(fernTestValueRuleName)
		assert.Equal(t, fernTestValueRuleName, obj.RuleName)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetSampleRate", func(t *testing.T) {
		obj := &CreateReleaseWatchRequest{}
		var fernTestValueSampleRate *string
		obj.SetSampleRate(fernTestValueSampleRate)
		assert.Equal(t, fernTestValueSampleRate, obj.SampleRate)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetSignalTags", func(t *testing.T) {
		obj := &CreateReleaseWatchRequest{}
		var fernTestValueSignalTags []string
		obj.SetSignalTags(fernTestValueSignalTags)
		assert.Equal(t, fernTestValueSignalTags, obj.SignalTags)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetTarget", func(t *testing.T) {
		obj := &CreateReleaseWatchRequest{}
		var fernTestValueTarget *string
		obj.SetTarget(fernTestValueTarget)
		assert.Equal(t, fernTestValueTarget, obj.Target)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetTraceIDs", func(t *testing.T) {
		obj := &CreateReleaseWatchRequest{}
		var fernTestValueTraceIDs []string
		obj.SetTraceIDs(fernTestValueTraceIDs)
		assert.Equal(t, fernTestValueTraceIDs, obj.TraceIDs)
		assert.NotNil(t, obj.explicitFields)
	})

}

func TestSettersMarkExplicitCreateReleaseWatchRequest(t *testing.T) {
	t.Run("SetAgentID_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &CreateReleaseWatchRequest{}
		var fernTestValueAgentID *string

		// Act
		obj.SetAgentID(fernTestValueAgentID)

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

	t.Run("SetBackfillWindow_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &CreateReleaseWatchRequest{}
		var fernTestValueBackfillWindow *string

		// Act
		obj.SetBackfillWindow(fernTestValueBackfillWindow)

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

	t.Run("SetFilterExpression_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &CreateReleaseWatchRequest{}
		var fernTestValueFilterExpression *string

		// Act
		obj.SetFilterExpression(fernTestValueFilterExpression)

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

	t.Run("SetIssueID_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &CreateReleaseWatchRequest{}
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

	t.Run("SetIssueTitle_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &CreateReleaseWatchRequest{}
		var fernTestValueIssueTitle *string

		// Act
		obj.SetIssueTitle(fernTestValueIssueTitle)

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

	t.Run("SetReleaseID_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &CreateReleaseWatchRequest{}
		var fernTestValueReleaseID *string

		// Act
		obj.SetReleaseID(fernTestValueReleaseID)

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

	t.Run("SetRuleID_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &CreateReleaseWatchRequest{}
		var fernTestValueRuleID *string

		// Act
		obj.SetRuleID(fernTestValueRuleID)

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

	t.Run("SetRuleName_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &CreateReleaseWatchRequest{}
		var fernTestValueRuleName *string

		// Act
		obj.SetRuleName(fernTestValueRuleName)

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

	t.Run("SetSampleRate_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &CreateReleaseWatchRequest{}
		var fernTestValueSampleRate *string

		// Act
		obj.SetSampleRate(fernTestValueSampleRate)

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

	t.Run("SetSignalTags_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &CreateReleaseWatchRequest{}
		var fernTestValueSignalTags []string

		// Act
		obj.SetSignalTags(fernTestValueSignalTags)

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
		obj := &CreateReleaseWatchRequest{}
		var fernTestValueTarget *string

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

	t.Run("SetTraceIDs_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &CreateReleaseWatchRequest{}
		var fernTestValueTraceIDs []string

		// Act
		obj.SetTraceIDs(fernTestValueTraceIDs)

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
