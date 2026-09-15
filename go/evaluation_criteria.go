
package api

import (
	big "math/big"
)

var (
	listCriteriaEvaluationCriteriaRequestFieldAfter = big.NewInt(1 << 0)
)

type ListCriteriaEvaluationCriteriaRequest struct {
	After *string `json:"-" url:"after,omitempty"`

	// Private bitmask of fields set to an explicit value and therefore not to be omitted
	explicitFields *big.Int `json:"-" url:"-"`
}

func (l *ListCriteriaEvaluationCriteriaRequest) require(field *big.Int) {
	if l.explicitFields == nil {
		l.explicitFields = big.NewInt(0)
	}
	l.explicitFields.Or(l.explicitFields, field)
}

// SetAfter sets the After field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (l *ListCriteriaEvaluationCriteriaRequest) SetAfter(after *string) {
	l.After = after
	l.require(listCriteriaEvaluationCriteriaRequestFieldAfter)
}
