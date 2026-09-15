
package api

import (
	json "encoding/json"
	assert "github.com/stretchr/testify/assert"
	require "github.com/stretchr/testify/require"
	testing "testing"
)

func TestSettersCreateEvaluatorRunRequest(t *testing.T) {
	t.Run("SetAgentID", func(t *testing.T) {
		obj := &CreateEvaluatorRunRequest{}
		var fernTestValueAgentID *string
		obj.SetAgentID(fernTestValueAgentID)
		assert.Equal(t, fernTestValueAgentID, obj.AgentID)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetBackfillWindow", func(t *testing.T) {
		obj := &CreateEvaluatorRunRequest{}
		var fernTestValueBackfillWindow *string
		obj.SetBackfillWindow(fernTestValueBackfillWindow)
		assert.Equal(t, fernTestValueBackfillWindow, obj.BackfillWindow)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetDatasetName", func(t *testing.T) {
		obj := &CreateEvaluatorRunRequest{}
		var fernTestValueDatasetName *string
		obj.SetDatasetName(fernTestValueDatasetName)
		assert.Equal(t, fernTestValueDatasetName, obj.DatasetName)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetEvaluatorName", func(t *testing.T) {
		obj := &CreateEvaluatorRunRequest{}
		var fernTestValueEvaluatorName *string
		obj.SetEvaluatorName(fernTestValueEvaluatorName)
		assert.Equal(t, fernTestValueEvaluatorName, obj.EvaluatorName)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetFilterExpression", func(t *testing.T) {
		obj := &CreateEvaluatorRunRequest{}
		var fernTestValueFilterExpression *string
		obj.SetFilterExpression(fernTestValueFilterExpression)
		assert.Equal(t, fernTestValueFilterExpression, obj.FilterExpression)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetIssueID", func(t *testing.T) {
		obj := &CreateEvaluatorRunRequest{}
		var fernTestValueIssueID *string
		obj.SetIssueID(fernTestValueIssueID)
		assert.Equal(t, fernTestValueIssueID, obj.IssueID)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetIssueTitle", func(t *testing.T) {
		obj := &CreateEvaluatorRunRequest{}
		var fernTestValueIssueTitle *string
		obj.SetIssueTitle(fernTestValueIssueTitle)
		assert.Equal(t, fernTestValueIssueTitle, obj.IssueTitle)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetSampleRate", func(t *testing.T) {
		obj := &CreateEvaluatorRunRequest{}
		var fernTestValueSampleRate *string
		obj.SetSampleRate(fernTestValueSampleRate)
		assert.Equal(t, fernTestValueSampleRate, obj.SampleRate)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetSignalTags", func(t *testing.T) {
		obj := &CreateEvaluatorRunRequest{}
		var fernTestValueSignalTags []string
		obj.SetSignalTags(fernTestValueSignalTags)
		assert.Equal(t, fernTestValueSignalTags, obj.SignalTags)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetTraceIDs", func(t *testing.T) {
		obj := &CreateEvaluatorRunRequest{}
		var fernTestValueTraceIDs []string
		obj.SetTraceIDs(fernTestValueTraceIDs)
		assert.Equal(t, fernTestValueTraceIDs, obj.TraceIDs)
		assert.NotNil(t, obj.explicitFields)
	})

}

func TestSettersMarkExplicitCreateEvaluatorRunRequest(t *testing.T) {
	t.Run("SetAgentID_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &CreateEvaluatorRunRequest{}
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
		obj := &CreateEvaluatorRunRequest{}
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

	t.Run("SetDatasetName_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &CreateEvaluatorRunRequest{}
		var fernTestValueDatasetName *string

		// Act
		obj.SetDatasetName(fernTestValueDatasetName)

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

	t.Run("SetEvaluatorName_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &CreateEvaluatorRunRequest{}
		var fernTestValueEvaluatorName *string

		// Act
		obj.SetEvaluatorName(fernTestValueEvaluatorName)

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
		obj := &CreateEvaluatorRunRequest{}
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
		obj := &CreateEvaluatorRunRequest{}
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
		obj := &CreateEvaluatorRunRequest{}
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

	t.Run("SetSampleRate_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &CreateEvaluatorRunRequest{}
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
		obj := &CreateEvaluatorRunRequest{}
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

	t.Run("SetTraceIDs_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &CreateEvaluatorRunRequest{}
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
