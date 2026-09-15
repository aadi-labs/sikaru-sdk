
package api

import (
	json "encoding/json"
	assert "github.com/stretchr/testify/assert"
	require "github.com/stretchr/testify/require"
	testing "testing"
)

func TestSettersListIssueClustersIssueClustersRequest(t *testing.T) {
	t.Run("SetStatus", func(t *testing.T) {
		obj := &ListIssueClustersIssueClustersRequest{}
		var fernTestValueStatus *string
		obj.SetStatus(fernTestValueStatus)
		assert.Equal(t, fernTestValueStatus, obj.Status)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetSeverity", func(t *testing.T) {
		obj := &ListIssueClustersIssueClustersRequest{}
		var fernTestValueSeverity *string
		obj.SetSeverity(fernTestValueSeverity)
		assert.Equal(t, fernTestValueSeverity, obj.Severity)
		assert.NotNil(t, obj.explicitFields)
	})

}

func TestSettersMarkExplicitListIssueClustersIssueClustersRequest(t *testing.T) {
	t.Run("SetStatus_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &ListIssueClustersIssueClustersRequest{}
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

	t.Run("SetSeverity_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &ListIssueClustersIssueClustersRequest{}
		var fernTestValueSeverity *string

		// Act
		obj.SetSeverity(fernTestValueSeverity)

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

func TestSettersMineProjectIssueClustersIssueClustersRequest(t *testing.T) {
	t.Run("SetSince", func(t *testing.T) {
		obj := &MineProjectIssueClustersIssueClustersRequest{}
		var fernTestValueSince *string
		obj.SetSince(fernTestValueSince)
		assert.Equal(t, fernTestValueSince, obj.Since)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetUntil", func(t *testing.T) {
		obj := &MineProjectIssueClustersIssueClustersRequest{}
		var fernTestValueUntil *string
		obj.SetUntil(fernTestValueUntil)
		assert.Equal(t, fernTestValueUntil, obj.Until)
		assert.NotNil(t, obj.explicitFields)
	})

}

func TestSettersMarkExplicitMineProjectIssueClustersIssueClustersRequest(t *testing.T) {
	t.Run("SetSince_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &MineProjectIssueClustersIssueClustersRequest{}
		var fernTestValueSince *string

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
		obj := &MineProjectIssueClustersIssueClustersRequest{}
		var fernTestValueUntil *string

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

func TestSettersUpdateIssueClusterStatusRequest(t *testing.T) {
	t.Run("SetStatus", func(t *testing.T) {
		obj := &UpdateIssueClusterStatusRequest{}
		var fernTestValueStatus string
		obj.SetStatus(fernTestValueStatus)
		assert.Equal(t, fernTestValueStatus, obj.Status)
		assert.NotNil(t, obj.explicitFields)
	})

}

func TestSettersMarkExplicitUpdateIssueClusterStatusRequest(t *testing.T) {
	t.Run("SetStatus_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &UpdateIssueClusterStatusRequest{}
		var fernTestValueStatus string

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

func TestSettersUpsertIssueClusterRequest(t *testing.T) {
	t.Run("SetAgentID", func(t *testing.T) {
		obj := &UpsertIssueClusterRequest{}
		var fernTestValueAgentID *string
		obj.SetAgentID(fernTestValueAgentID)
		assert.Equal(t, fernTestValueAgentID, obj.AgentID)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetImpact", func(t *testing.T) {
		obj := &UpsertIssueClusterRequest{}
		var fernTestValueImpact *int
		obj.SetImpact(fernTestValueImpact)
		assert.Equal(t, fernTestValueImpact, obj.Impact)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetIssueID", func(t *testing.T) {
		obj := &UpsertIssueClusterRequest{}
		var fernTestValueIssueID *string
		obj.SetIssueID(fernTestValueIssueID)
		assert.Equal(t, fernTestValueIssueID, obj.IssueID)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetIssueTitle", func(t *testing.T) {
		obj := &UpsertIssueClusterRequest{}
		var fernTestValueIssueTitle *string
		obj.SetIssueTitle(fernTestValueIssueTitle)
		assert.Equal(t, fernTestValueIssueTitle, obj.IssueTitle)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetLabel", func(t *testing.T) {
		obj := &UpsertIssueClusterRequest{}
		var fernTestValueLabel string
		obj.SetLabel(fernTestValueLabel)
		assert.Equal(t, fernTestValueLabel, obj.Label)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetSignalTags", func(t *testing.T) {
		obj := &UpsertIssueClusterRequest{}
		var fernTestValueSignalTags []string
		obj.SetSignalTags(fernTestValueSignalTags)
		assert.Equal(t, fernTestValueSignalTags, obj.SignalTags)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetTraceIDs", func(t *testing.T) {
		obj := &UpsertIssueClusterRequest{}
		var fernTestValueTraceIDs []string
		obj.SetTraceIDs(fernTestValueTraceIDs)
		assert.Equal(t, fernTestValueTraceIDs, obj.TraceIDs)
		assert.NotNil(t, obj.explicitFields)
	})

}

func TestSettersMarkExplicitUpsertIssueClusterRequest(t *testing.T) {
	t.Run("SetAgentID_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &UpsertIssueClusterRequest{}
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

	t.Run("SetImpact_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &UpsertIssueClusterRequest{}
		var fernTestValueImpact *int

		// Act
		obj.SetImpact(fernTestValueImpact)

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
		obj := &UpsertIssueClusterRequest{}
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
		obj := &UpsertIssueClusterRequest{}
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

	t.Run("SetLabel_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &UpsertIssueClusterRequest{}
		var fernTestValueLabel string

		// Act
		obj.SetLabel(fernTestValueLabel)

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
		obj := &UpsertIssueClusterRequest{}
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
		obj := &UpsertIssueClusterRequest{}
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
