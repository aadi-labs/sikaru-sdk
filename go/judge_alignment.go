
package api

import (
	fmt "fmt"
	big "math/big"
)

var (
	getJudgeAlignmentJudgeAlignmentRequestFieldEvaluator   = big.NewInt(1 << 0)
	getJudgeAlignmentJudgeAlignmentRequestFieldRevision    = big.NewInt(1 << 1)
	getJudgeAlignmentJudgeAlignmentRequestFieldEnvironment = big.NewInt(1 << 2)
)

type GetJudgeAlignmentJudgeAlignmentRequest struct {
	Evaluator   string                                             `json:"-" url:"evaluator"`
	Revision    string                                             `json:"-" url:"revision"`
	Environment *GetJudgeAlignmentJudgeAlignmentRequestEnvironment `json:"-" url:"environment,omitempty"`

	// Private bitmask of fields set to an explicit value and therefore not to be omitted
	explicitFields *big.Int `json:"-" url:"-"`
}

func (g *GetJudgeAlignmentJudgeAlignmentRequest) require(field *big.Int) {
	if g.explicitFields == nil {
		g.explicitFields = big.NewInt(0)
	}
	g.explicitFields.Or(g.explicitFields, field)
}

// SetEvaluator sets the Evaluator field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (g *GetJudgeAlignmentJudgeAlignmentRequest) SetEvaluator(evaluator string) {
	g.Evaluator = evaluator
	g.require(getJudgeAlignmentJudgeAlignmentRequestFieldEvaluator)
}

// SetRevision sets the Revision field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (g *GetJudgeAlignmentJudgeAlignmentRequest) SetRevision(revision string) {
	g.Revision = revision
	g.require(getJudgeAlignmentJudgeAlignmentRequestFieldRevision)
}

// SetEnvironment sets the Environment field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (g *GetJudgeAlignmentJudgeAlignmentRequest) SetEnvironment(environment *GetJudgeAlignmentJudgeAlignmentRequestEnvironment) {
	g.Environment = environment
	g.require(getJudgeAlignmentJudgeAlignmentRequestFieldEnvironment)
}

type GetJudgeAlignmentJudgeAlignmentRequestEnvironment string

const (
	GetJudgeAlignmentJudgeAlignmentRequestEnvironmentProduction  GetJudgeAlignmentJudgeAlignmentRequestEnvironment = "production"
	GetJudgeAlignmentJudgeAlignmentRequestEnvironmentStaging     GetJudgeAlignmentJudgeAlignmentRequestEnvironment = "staging"
	GetJudgeAlignmentJudgeAlignmentRequestEnvironmentDevelopment GetJudgeAlignmentJudgeAlignmentRequestEnvironment = "development"
)

func NewGetJudgeAlignmentJudgeAlignmentRequestEnvironmentFromString(s string) (GetJudgeAlignmentJudgeAlignmentRequestEnvironment, error) {
	switch s {
	case "production":
		return GetJudgeAlignmentJudgeAlignmentRequestEnvironmentProduction, nil
	case "staging":
		return GetJudgeAlignmentJudgeAlignmentRequestEnvironmentStaging, nil
	case "development":
		return GetJudgeAlignmentJudgeAlignmentRequestEnvironmentDevelopment, nil
	}
	var t GetJudgeAlignmentJudgeAlignmentRequestEnvironment
	return "", fmt.Errorf("%s is not a valid %T", s, t)
}

func (g GetJudgeAlignmentJudgeAlignmentRequestEnvironment) Ptr() *GetJudgeAlignmentJudgeAlignmentRequestEnvironment {
	return &g
}
