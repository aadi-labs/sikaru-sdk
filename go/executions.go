
package api

import (
	big "math/big"
)

var (
	executionRuntimeLineageExecutionsRequestFieldAccountID      = big.NewInt(1 << 0)
	executionRuntimeLineageExecutionsRequestFieldInferenceAfter = big.NewInt(1 << 1)
)

type ExecutionRuntimeLineageExecutionsRequest struct {
	AccountID      string  `json:"-" url:"account_id"`
	InferenceAfter *string `json:"-" url:"inference_after,omitempty"`

	// Private bitmask of fields set to an explicit value and therefore not to be omitted
	explicitFields *big.Int `json:"-" url:"-"`
}

func (e *ExecutionRuntimeLineageExecutionsRequest) require(field *big.Int) {
	if e.explicitFields == nil {
		e.explicitFields = big.NewInt(0)
	}
	e.explicitFields.Or(e.explicitFields, field)
}

// SetAccountID sets the AccountID field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (e *ExecutionRuntimeLineageExecutionsRequest) SetAccountID(accountID string) {
	e.AccountID = accountID
	e.require(executionRuntimeLineageExecutionsRequestFieldAccountID)
}

// SetInferenceAfter sets the InferenceAfter field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (e *ExecutionRuntimeLineageExecutionsRequest) SetInferenceAfter(inferenceAfter *string) {
	e.InferenceAfter = inferenceAfter
	e.require(executionRuntimeLineageExecutionsRequestFieldInferenceAfter)
}
