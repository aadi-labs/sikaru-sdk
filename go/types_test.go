
package api

import (
	json "encoding/json"
	assert "github.com/stretchr/testify/assert"
	require "github.com/stretchr/testify/require"
	testing "testing"
)

func TestSettersHTTPValidationError(t *testing.T) {
	t.Run("SetDetail", func(t *testing.T) {
		obj := &HTTPValidationError{}
		var fernTestValueDetail []*ValidationError
		obj.SetDetail(fernTestValueDetail)
		assert.Equal(t, fernTestValueDetail, obj.Detail)
		assert.NotNil(t, obj.explicitFields)
	})

}

func TestGettersHTTPValidationError(t *testing.T) {
	t.Run("GetDetail", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &HTTPValidationError{}
		var expected []*ValidationError
		obj.Detail = expected

		// Act & Assert
		assert.Equal(t, expected, obj.GetDetail(), "getter should return the property value")
	})

	t.Run("GetDetail_NilValue", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &HTTPValidationError{}
		obj.Detail = nil

		// Act & Assert
		assert.Nil(t, obj.GetDetail(), "getter should return nil when property is nil")
	})

	t.Run("GetDetail_NilReceiver", func(t *testing.T) {
		t.Parallel()
		var obj *HTTPValidationError
		// Should not panic - getters should handle nil receiver gracefully
		defer func() {
			if r := recover(); r != nil {
				t.Errorf("Getter panicked on nil receiver: %v", r)
			}
		}()
		_ = obj.GetDetail() // Should return zero value
	})

}

func TestSettersMarkExplicitHTTPValidationError(t *testing.T) {
	t.Run("SetDetail_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &HTTPValidationError{}
		var fernTestValueDetail []*ValidationError

		// Act
		obj.SetDetail(fernTestValueDetail)

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

func TestSettersJudgmentTarget(t *testing.T) {
	t.Run("SetAccountID", func(t *testing.T) {
		obj := &JudgmentTarget{}
		var fernTestValueAccountID string
		obj.SetAccountID(fernTestValueAccountID)
		assert.Equal(t, fernTestValueAccountID, obj.AccountID)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetConversationID", func(t *testing.T) {
		obj := &JudgmentTarget{}
		var fernTestValueConversationID *string
		obj.SetConversationID(fernTestValueConversationID)
		assert.Equal(t, fernTestValueConversationID, obj.ConversationID)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetKind", func(t *testing.T) {
		obj := &JudgmentTarget{}
		var fernTestValueKind JudgmentTargetKind
		obj.SetKind(fernTestValueKind)
		assert.Equal(t, fernTestValueKind, obj.Kind)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetMessageID", func(t *testing.T) {
		obj := &JudgmentTarget{}
		var fernTestValueMessageID *string
		obj.SetMessageID(fernTestValueMessageID)
		assert.Equal(t, fernTestValueMessageID, obj.MessageID)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetSpanID", func(t *testing.T) {
		obj := &JudgmentTarget{}
		var fernTestValueSpanID *string
		obj.SetSpanID(fernTestValueSpanID)
		assert.Equal(t, fernTestValueSpanID, obj.SpanID)
		assert.NotNil(t, obj.explicitFields)
	})

}

func TestGettersJudgmentTarget(t *testing.T) {
	t.Run("GetAccountID", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &JudgmentTarget{}
		var expected string
		obj.AccountID = expected

		// Act & Assert
		assert.Equal(t, expected, obj.GetAccountID(), "getter should return the property value")
	})

	t.Run("GetAccountID_NilReceiver", func(t *testing.T) {
		t.Parallel()
		var obj *JudgmentTarget
		// Should not panic - getters should handle nil receiver gracefully
		defer func() {
			if r := recover(); r != nil {
				t.Errorf("Getter panicked on nil receiver: %v", r)
			}
		}()
		_ = obj.GetAccountID() // Should return zero value
	})

	t.Run("GetConversationID", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &JudgmentTarget{}
		var expected *string
		obj.ConversationID = expected

		// Act & Assert
		assert.Equal(t, expected, obj.GetConversationID(), "getter should return the property value")
	})

	t.Run("GetConversationID_NilValue", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &JudgmentTarget{}
		obj.ConversationID = nil

		// Act & Assert
		assert.Nil(t, obj.GetConversationID(), "getter should return nil when property is nil")
	})

	t.Run("GetConversationID_NilReceiver", func(t *testing.T) {
		t.Parallel()
		var obj *JudgmentTarget
		// Should not panic - getters should handle nil receiver gracefully
		defer func() {
			if r := recover(); r != nil {
				t.Errorf("Getter panicked on nil receiver: %v", r)
			}
		}()
		_ = obj.GetConversationID() // Should return zero value
	})

	t.Run("GetKind", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &JudgmentTarget{}
		var expected JudgmentTargetKind
		obj.Kind = expected

		// Act & Assert
		assert.Equal(t, expected, obj.GetKind(), "getter should return the property value")
	})

	t.Run("GetKind_NilReceiver", func(t *testing.T) {
		t.Parallel()
		var obj *JudgmentTarget
		// Should not panic - getters should handle nil receiver gracefully
		defer func() {
			if r := recover(); r != nil {
				t.Errorf("Getter panicked on nil receiver: %v", r)
			}
		}()
		_ = obj.GetKind() // Should return zero value
	})

	t.Run("GetMessageID", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &JudgmentTarget{}
		var expected *string
		obj.MessageID = expected

		// Act & Assert
		assert.Equal(t, expected, obj.GetMessageID(), "getter should return the property value")
	})

	t.Run("GetMessageID_NilValue", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &JudgmentTarget{}
		obj.MessageID = nil

		// Act & Assert
		assert.Nil(t, obj.GetMessageID(), "getter should return nil when property is nil")
	})

	t.Run("GetMessageID_NilReceiver", func(t *testing.T) {
		t.Parallel()
		var obj *JudgmentTarget
		// Should not panic - getters should handle nil receiver gracefully
		defer func() {
			if r := recover(); r != nil {
				t.Errorf("Getter panicked on nil receiver: %v", r)
			}
		}()
		_ = obj.GetMessageID() // Should return zero value
	})

	t.Run("GetSpanID", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &JudgmentTarget{}
		var expected *string
		obj.SpanID = expected

		// Act & Assert
		assert.Equal(t, expected, obj.GetSpanID(), "getter should return the property value")
	})

	t.Run("GetSpanID_NilValue", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &JudgmentTarget{}
		obj.SpanID = nil

		// Act & Assert
		assert.Nil(t, obj.GetSpanID(), "getter should return nil when property is nil")
	})

	t.Run("GetSpanID_NilReceiver", func(t *testing.T) {
		t.Parallel()
		var obj *JudgmentTarget
		// Should not panic - getters should handle nil receiver gracefully
		defer func() {
			if r := recover(); r != nil {
				t.Errorf("Getter panicked on nil receiver: %v", r)
			}
		}()
		_ = obj.GetSpanID() // Should return zero value
	})

}

func TestSettersMarkExplicitJudgmentTarget(t *testing.T) {
	t.Run("SetAccountID_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &JudgmentTarget{}
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

	t.Run("SetConversationID_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &JudgmentTarget{}
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

	t.Run("SetKind_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &JudgmentTarget{}
		var fernTestValueKind JudgmentTargetKind

		// Act
		obj.SetKind(fernTestValueKind)

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
		obj := &JudgmentTarget{}
		var fernTestValueMessageID *string

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

	t.Run("SetSpanID_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &JudgmentTarget{}
		var fernTestValueSpanID *string

		// Act
		obj.SetSpanID(fernTestValueSpanID)

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

func TestSettersRecoverRunRequest(t *testing.T) {
	t.Run("SetReason", func(t *testing.T) {
		obj := &RecoverRunRequest{}
		var fernTestValueReason *string
		obj.SetReason(fernTestValueReason)
		assert.Equal(t, fernTestValueReason, obj.Reason)
		assert.NotNil(t, obj.explicitFields)
	})

}

func TestGettersRecoverRunRequest(t *testing.T) {
	t.Run("GetReason", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &RecoverRunRequest{}
		var expected *string
		obj.Reason = expected

		// Act & Assert
		assert.Equal(t, expected, obj.GetReason(), "getter should return the property value")
	})

	t.Run("GetReason_NilValue", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &RecoverRunRequest{}
		obj.Reason = nil

		// Act & Assert
		assert.Nil(t, obj.GetReason(), "getter should return nil when property is nil")
	})

	t.Run("GetReason_NilReceiver", func(t *testing.T) {
		t.Parallel()
		var obj *RecoverRunRequest
		// Should not panic - getters should handle nil receiver gracefully
		defer func() {
			if r := recover(); r != nil {
				t.Errorf("Getter panicked on nil receiver: %v", r)
			}
		}()
		_ = obj.GetReason() // Should return zero value
	})

}

func TestSettersMarkExplicitRecoverRunRequest(t *testing.T) {
	t.Run("SetReason_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &RecoverRunRequest{}
		var fernTestValueReason *string

		// Act
		obj.SetReason(fernTestValueReason)

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

func TestSettersValidationError(t *testing.T) {
	t.Run("SetCtx", func(t *testing.T) {
		obj := &ValidationError{}
		var fernTestValueCtx map[string]any
		obj.SetCtx(fernTestValueCtx)
		assert.Equal(t, fernTestValueCtx, obj.Ctx)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetInput", func(t *testing.T) {
		obj := &ValidationError{}
		var fernTestValueInput any
		obj.SetInput(fernTestValueInput)
		assert.Equal(t, fernTestValueInput, obj.Input)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetLoc", func(t *testing.T) {
		obj := &ValidationError{}
		var fernTestValueLoc []*ValidationErrorLocItem
		obj.SetLoc(fernTestValueLoc)
		assert.Equal(t, fernTestValueLoc, obj.Loc)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetMsg", func(t *testing.T) {
		obj := &ValidationError{}
		var fernTestValueMsg string
		obj.SetMsg(fernTestValueMsg)
		assert.Equal(t, fernTestValueMsg, obj.Msg)
		assert.NotNil(t, obj.explicitFields)
	})

	t.Run("SetType", func(t *testing.T) {
		obj := &ValidationError{}
		var fernTestValueType string
		obj.SetType(fernTestValueType)
		assert.Equal(t, fernTestValueType, obj.Type)
		assert.NotNil(t, obj.explicitFields)
	})

}

func TestGettersValidationError(t *testing.T) {
	t.Run("GetCtx", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &ValidationError{}
		var expected map[string]any
		obj.Ctx = expected

		// Act & Assert
		assert.Equal(t, expected, obj.GetCtx(), "getter should return the property value")
	})

	t.Run("GetCtx_NilValue", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &ValidationError{}
		obj.Ctx = nil

		// Act & Assert
		assert.Nil(t, obj.GetCtx(), "getter should return nil when property is nil")
	})

	t.Run("GetCtx_NilReceiver", func(t *testing.T) {
		t.Parallel()
		var obj *ValidationError
		// Should not panic - getters should handle nil receiver gracefully
		defer func() {
			if r := recover(); r != nil {
				t.Errorf("Getter panicked on nil receiver: %v", r)
			}
		}()
		_ = obj.GetCtx() // Should return zero value
	})

	t.Run("GetInput", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &ValidationError{}
		var expected any
		obj.Input = expected

		// Act & Assert
		assert.Equal(t, expected, obj.GetInput(), "getter should return the property value")
	})

	t.Run("GetInput_NilReceiver", func(t *testing.T) {
		t.Parallel()
		var obj *ValidationError
		// Should not panic - getters should handle nil receiver gracefully
		defer func() {
			if r := recover(); r != nil {
				t.Errorf("Getter panicked on nil receiver: %v", r)
			}
		}()
		_ = obj.GetInput() // Should return zero value
	})

	t.Run("GetLoc", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &ValidationError{}
		var expected []*ValidationErrorLocItem
		obj.Loc = expected

		// Act & Assert
		assert.Equal(t, expected, obj.GetLoc(), "getter should return the property value")
	})

	t.Run("GetLoc_NilValue", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &ValidationError{}
		obj.Loc = nil

		// Act & Assert
		assert.Nil(t, obj.GetLoc(), "getter should return nil when property is nil")
	})

	t.Run("GetLoc_NilReceiver", func(t *testing.T) {
		t.Parallel()
		var obj *ValidationError
		// Should not panic - getters should handle nil receiver gracefully
		defer func() {
			if r := recover(); r != nil {
				t.Errorf("Getter panicked on nil receiver: %v", r)
			}
		}()
		_ = obj.GetLoc() // Should return zero value
	})

	t.Run("GetMsg", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &ValidationError{}
		var expected string
		obj.Msg = expected

		// Act & Assert
		assert.Equal(t, expected, obj.GetMsg(), "getter should return the property value")
	})

	t.Run("GetMsg_NilReceiver", func(t *testing.T) {
		t.Parallel()
		var obj *ValidationError
		// Should not panic - getters should handle nil receiver gracefully
		defer func() {
			if r := recover(); r != nil {
				t.Errorf("Getter panicked on nil receiver: %v", r)
			}
		}()
		_ = obj.GetMsg() // Should return zero value
	})

	t.Run("GetType", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &ValidationError{}
		var expected string
		obj.Type = expected

		// Act & Assert
		assert.Equal(t, expected, obj.GetType(), "getter should return the property value")
	})

	t.Run("GetType_NilReceiver", func(t *testing.T) {
		t.Parallel()
		var obj *ValidationError
		// Should not panic - getters should handle nil receiver gracefully
		defer func() {
			if r := recover(); r != nil {
				t.Errorf("Getter panicked on nil receiver: %v", r)
			}
		}()
		_ = obj.GetType() // Should return zero value
	})

}

func TestSettersMarkExplicitValidationError(t *testing.T) {
	t.Run("SetCtx_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &ValidationError{}
		var fernTestValueCtx map[string]any

		// Act
		obj.SetCtx(fernTestValueCtx)

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
		obj := &ValidationError{}
		var fernTestValueInput any

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

	t.Run("SetLoc_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &ValidationError{}
		var fernTestValueLoc []*ValidationErrorLocItem

		// Act
		obj.SetLoc(fernTestValueLoc)

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

	t.Run("SetMsg_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &ValidationError{}
		var fernTestValueMsg string

		// Act
		obj.SetMsg(fernTestValueMsg)

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

	t.Run("SetType_MarksExplicit", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &ValidationError{}
		var fernTestValueType string

		// Act
		obj.SetType(fernTestValueType)

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

func TestGettersValidationErrorLocItem(t *testing.T) {
	t.Run("GetString", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &ValidationErrorLocItem{}
		var expected string
		obj.String = expected

		// Act & Assert
		assert.Equal(t, expected, obj.GetString(), "getter should return the property value")
	})

	t.Run("GetString_NilReceiver", func(t *testing.T) {
		t.Parallel()
		var obj *ValidationErrorLocItem
		// Should not panic - getters should handle nil receiver gracefully
		defer func() {
			if r := recover(); r != nil {
				t.Errorf("Getter panicked on nil receiver: %v", r)
			}
		}()
		_ = obj.GetString() // Should return zero value
	})

	t.Run("GetInteger", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &ValidationErrorLocItem{}
		var expected int
		obj.Integer = expected

		// Act & Assert
		assert.Equal(t, expected, obj.GetInteger(), "getter should return the property value")
	})

	t.Run("GetInteger_NilReceiver", func(t *testing.T) {
		t.Parallel()
		var obj *ValidationErrorLocItem
		// Should not panic - getters should handle nil receiver gracefully
		defer func() {
			if r := recover(); r != nil {
				t.Errorf("Getter panicked on nil receiver: %v", r)
			}
		}()
		_ = obj.GetInteger() // Should return zero value
	})

}

func TestJSONMarshalingHTTPValidationError(t *testing.T) {
	t.Run("MarshalUnmarshal", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &HTTPValidationError{}

		// Act - Marshal to JSON
		data, err := json.Marshal(obj)
		require.NoError(t, err, "marshaling should succeed")
		assert.NotNil(t, data, "marshaled data should not be nil")
		assert.NotEmpty(t, data, "marshaled data should not be empty")

		// Unmarshal back and verify round-trip
		var unmarshaled HTTPValidationError
		err = json.Unmarshal(data, &unmarshaled)
		assert.NoError(t, err, "round-trip unmarshal should succeed")
	})

	t.Run("UnmarshalInvalidJSON", func(t *testing.T) {
		t.Parallel()
		var obj HTTPValidationError
		err := json.Unmarshal([]byte(`{invalid json}`), &obj)
		assert.Error(t, err, "unmarshaling invalid JSON should return an error")
	})

	t.Run("UnmarshalEmptyObject", func(t *testing.T) {
		t.Parallel()
		var obj HTTPValidationError
		err := json.Unmarshal([]byte(`{}`), &obj)
		assert.NoError(t, err, "unmarshaling empty object should succeed")
	})
}

func TestJSONMarshalingJudgmentTarget(t *testing.T) {
	t.Run("MarshalUnmarshal", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &JudgmentTarget{}

		// Act - Marshal to JSON
		data, err := json.Marshal(obj)
		require.NoError(t, err, "marshaling should succeed")
		assert.NotNil(t, data, "marshaled data should not be nil")
		assert.NotEmpty(t, data, "marshaled data should not be empty")

		// Unmarshal back and verify round-trip
		var unmarshaled JudgmentTarget
		err = json.Unmarshal(data, &unmarshaled)
		assert.NoError(t, err, "round-trip unmarshal should succeed")
	})

	t.Run("UnmarshalInvalidJSON", func(t *testing.T) {
		t.Parallel()
		var obj JudgmentTarget
		err := json.Unmarshal([]byte(`{invalid json}`), &obj)
		assert.Error(t, err, "unmarshaling invalid JSON should return an error")
	})

	t.Run("UnmarshalEmptyObject", func(t *testing.T) {
		t.Parallel()
		var obj JudgmentTarget
		err := json.Unmarshal([]byte(`{}`), &obj)
		assert.NoError(t, err, "unmarshaling empty object should succeed")
	})
}

func TestJSONMarshalingRecoverRunRequest(t *testing.T) {
	t.Run("MarshalUnmarshal", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &RecoverRunRequest{}

		// Act - Marshal to JSON
		data, err := json.Marshal(obj)
		require.NoError(t, err, "marshaling should succeed")
		assert.NotNil(t, data, "marshaled data should not be nil")
		assert.NotEmpty(t, data, "marshaled data should not be empty")

		// Unmarshal back and verify round-trip
		var unmarshaled RecoverRunRequest
		err = json.Unmarshal(data, &unmarshaled)
		assert.NoError(t, err, "round-trip unmarshal should succeed")
	})

	t.Run("UnmarshalInvalidJSON", func(t *testing.T) {
		t.Parallel()
		var obj RecoverRunRequest
		err := json.Unmarshal([]byte(`{invalid json}`), &obj)
		assert.Error(t, err, "unmarshaling invalid JSON should return an error")
	})

	t.Run("UnmarshalEmptyObject", func(t *testing.T) {
		t.Parallel()
		var obj RecoverRunRequest
		err := json.Unmarshal([]byte(`{}`), &obj)
		assert.NoError(t, err, "unmarshaling empty object should succeed")
	})
}

func TestJSONMarshalingValidationError(t *testing.T) {
	t.Run("MarshalUnmarshal", func(t *testing.T) {
		t.Parallel()
		// Arrange
		obj := &ValidationError{}

		// Act - Marshal to JSON
		data, err := json.Marshal(obj)
		require.NoError(t, err, "marshaling should succeed")
		assert.NotNil(t, data, "marshaled data should not be nil")
		assert.NotEmpty(t, data, "marshaled data should not be empty")

		// Unmarshal back and verify round-trip
		var unmarshaled ValidationError
		err = json.Unmarshal(data, &unmarshaled)
		assert.NoError(t, err, "round-trip unmarshal should succeed")
	})

	t.Run("UnmarshalInvalidJSON", func(t *testing.T) {
		t.Parallel()
		var obj ValidationError
		err := json.Unmarshal([]byte(`{invalid json}`), &obj)
		assert.Error(t, err, "unmarshaling invalid JSON should return an error")
	})

	t.Run("UnmarshalEmptyObject", func(t *testing.T) {
		t.Parallel()
		var obj ValidationError
		err := json.Unmarshal([]byte(`{}`), &obj)
		assert.NoError(t, err, "unmarshaling empty object should succeed")
	})
}

func TestStringHTTPValidationError(t *testing.T) {
	t.Run("StringMethod", func(t *testing.T) {
		t.Parallel()
		obj := &HTTPValidationError{}
		result := obj.String()
		assert.NotEmpty(t, result, "String() should return a non-empty representation")
	})

	t.Run("StringMethod_NilReceiver", func(t *testing.T) {
		t.Parallel()
		var obj *HTTPValidationError
		result := obj.String()
		assert.Equal(t, "<nil>", result, "String() should return <nil> for nil receiver")
	})
}

func TestStringJudgmentTarget(t *testing.T) {
	t.Run("StringMethod", func(t *testing.T) {
		t.Parallel()
		obj := &JudgmentTarget{}
		result := obj.String()
		assert.NotEmpty(t, result, "String() should return a non-empty representation")
	})

	t.Run("StringMethod_NilReceiver", func(t *testing.T) {
		t.Parallel()
		var obj *JudgmentTarget
		result := obj.String()
		assert.Equal(t, "<nil>", result, "String() should return <nil> for nil receiver")
	})
}

func TestStringRecoverRunRequest(t *testing.T) {
	t.Run("StringMethod", func(t *testing.T) {
		t.Parallel()
		obj := &RecoverRunRequest{}
		result := obj.String()
		assert.NotEmpty(t, result, "String() should return a non-empty representation")
	})

	t.Run("StringMethod_NilReceiver", func(t *testing.T) {
		t.Parallel()
		var obj *RecoverRunRequest
		result := obj.String()
		assert.Equal(t, "<nil>", result, "String() should return <nil> for nil receiver")
	})
}

func TestStringValidationError(t *testing.T) {
	t.Run("StringMethod", func(t *testing.T) {
		t.Parallel()
		obj := &ValidationError{}
		result := obj.String()
		assert.NotEmpty(t, result, "String() should return a non-empty representation")
	})

	t.Run("StringMethod_NilReceiver", func(t *testing.T) {
		t.Parallel()
		var obj *ValidationError
		result := obj.String()
		assert.Equal(t, "<nil>", result, "String() should return <nil> for nil receiver")
	})
}

func TestEnumJudgmentTargetKind(t *testing.T) {
	t.Run("NewFromString_message", func(t *testing.T) {
		t.Parallel()
		val, err := NewJudgmentTargetKindFromString("message")
		assert.NoError(t, err, "valid enum value should not return error")
		assert.Equal(t, JudgmentTargetKind("message"), val, "enum value should match expected wire value")
	})

	t.Run("NewFromString_span", func(t *testing.T) {
		t.Parallel()
		val, err := NewJudgmentTargetKindFromString("span")
		assert.NoError(t, err, "valid enum value should not return error")
		assert.Equal(t, JudgmentTargetKind("span"), val, "enum value should match expected wire value")
	})

	t.Run("NewFromString_Invalid", func(t *testing.T) {
		_, err := NewJudgmentTargetKindFromString("invalid_value_that_does_not_exist")
		assert.Error(t, err)
	})

	t.Run("Ptr", func(t *testing.T) {
		val, err := NewJudgmentTargetKindFromString("message")
		assert.NoError(t, err)
		ptr := val.Ptr()
		assert.NotNil(t, ptr)
		assert.Equal(t, val, *ptr)
	})
}

func TestExtraPropertiesHTTPValidationError(t *testing.T) {
	t.Run("GetExtraProperties", func(t *testing.T) {
		t.Parallel()
		obj := &HTTPValidationError{}
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
		var obj *HTTPValidationError
		extraProps := obj.GetExtraProperties()
		assert.Nil(t, extraProps, "nil receiver should return nil without panicking")
	})
}

func TestExtraPropertiesJudgmentTarget(t *testing.T) {
	t.Run("GetExtraProperties", func(t *testing.T) {
		t.Parallel()
		obj := &JudgmentTarget{}
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
		var obj *JudgmentTarget
		extraProps := obj.GetExtraProperties()
		assert.Nil(t, extraProps, "nil receiver should return nil without panicking")
	})
}

func TestExtraPropertiesRecoverRunRequest(t *testing.T) {
	t.Run("GetExtraProperties", func(t *testing.T) {
		t.Parallel()
		obj := &RecoverRunRequest{}
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
		var obj *RecoverRunRequest
		extraProps := obj.GetExtraProperties()
		assert.Nil(t, extraProps, "nil receiver should return nil without panicking")
	})
}

func TestExtraPropertiesValidationError(t *testing.T) {
	t.Run("GetExtraProperties", func(t *testing.T) {
		t.Parallel()
		obj := &ValidationError{}
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
		var obj *ValidationError
		extraProps := obj.GetExtraProperties()
		assert.Nil(t, extraProps, "nil receiver should return nil without panicking")
	})
}
