
package api

import (
	json "encoding/json"
	fmt "fmt"
	internal "github.com/aadi-labs/sikaru-sdk/go/internal"
	big "math/big"
)

var (
	policyInputFieldEnvironment   = big.NewInt(1 << 0)
	policyInputFieldEvaluator     = big.NewInt(1 << 1)
	policyInputFieldID            = big.NewInt(1 << 2)
	policyInputFieldRevision      = big.NewInt(1 << 3)
	policyInputFieldRubric        = big.NewInt(1 << 4)
	policyInputFieldSamplePercent = big.NewInt(1 << 5)
)

type PolicyInput struct {
	Environment   *PolicyInputEnvironment `json:"environment,omitempty" url:"-"`
	Evaluator     string                  `json:"evaluator" url:"-"`
	ID            string                  `json:"id" url:"-"`
	Revision      string                  `json:"revision" url:"-"`
	Rubric        string                  `json:"rubric" url:"-"`
	SamplePercent int                     `json:"samplePercent" url:"-"`

	// Private bitmask of fields set to an explicit value and therefore not to be omitted
	explicitFields *big.Int `json:"-" url:"-"`
}

func (p *PolicyInput) require(field *big.Int) {
	if p.explicitFields == nil {
		p.explicitFields = big.NewInt(0)
	}
	p.explicitFields.Or(p.explicitFields, field)
}

// SetEnvironment sets the Environment field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (p *PolicyInput) SetEnvironment(environment *PolicyInputEnvironment) {
	p.Environment = environment
	p.require(policyInputFieldEnvironment)
}

// SetEvaluator sets the Evaluator field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (p *PolicyInput) SetEvaluator(evaluator string) {
	p.Evaluator = evaluator
	p.require(policyInputFieldEvaluator)
}

// SetID sets the ID field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (p *PolicyInput) SetID(id string) {
	p.ID = id
	p.require(policyInputFieldID)
}

// SetRevision sets the Revision field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (p *PolicyInput) SetRevision(revision string) {
	p.Revision = revision
	p.require(policyInputFieldRevision)
}

// SetRubric sets the Rubric field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (p *PolicyInput) SetRubric(rubric string) {
	p.Rubric = rubric
	p.require(policyInputFieldRubric)
}

// SetSamplePercent sets the SamplePercent field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (p *PolicyInput) SetSamplePercent(samplePercent int) {
	p.SamplePercent = samplePercent
	p.require(policyInputFieldSamplePercent)
}

func (p *PolicyInput) UnmarshalJSON(data []byte) error {
	type unmarshaler PolicyInput
	var body unmarshaler
	if err := json.Unmarshal(data, &body); err != nil {
		return err
	}
	*p = PolicyInput(body)
	return nil
}

func (p *PolicyInput) MarshalJSON() ([]byte, error) {
	type embed PolicyInput
	var marshaler = struct {
		embed
	}{
		embed: embed(*p),
	}
	explicitMarshaler := internal.HandleExplicitFields(marshaler, p.explicitFields)
	return json.Marshal(explicitMarshaler)
}

var (
	listPoliciesOnlineEvaluationsRequestFieldAfter = big.NewInt(1 << 0)
)

type ListPoliciesOnlineEvaluationsRequest struct {
	After *string `json:"-" url:"after,omitempty"`

	// Private bitmask of fields set to an explicit value and therefore not to be omitted
	explicitFields *big.Int `json:"-" url:"-"`
}

func (l *ListPoliciesOnlineEvaluationsRequest) require(field *big.Int) {
	if l.explicitFields == nil {
		l.explicitFields = big.NewInt(0)
	}
	l.explicitFields.Or(l.explicitFields, field)
}

// SetAfter sets the After field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (l *ListPoliciesOnlineEvaluationsRequest) SetAfter(after *string) {
	l.After = after
	l.require(listPoliciesOnlineEvaluationsRequestFieldAfter)
}

var (
	previewPolicyEligibilityOnlineEvaluationsRequestFieldEnvironment = big.NewInt(1 << 0)
)

type PreviewPolicyEligibilityOnlineEvaluationsRequest struct {
	Environment *PreviewPolicyEligibilityOnlineEvaluationsRequestEnvironment `json:"-" url:"environment,omitempty"`

	// Private bitmask of fields set to an explicit value and therefore not to be omitted
	explicitFields *big.Int `json:"-" url:"-"`
}

func (p *PreviewPolicyEligibilityOnlineEvaluationsRequest) require(field *big.Int) {
	if p.explicitFields == nil {
		p.explicitFields = big.NewInt(0)
	}
	p.explicitFields.Or(p.explicitFields, field)
}

// SetEnvironment sets the Environment field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (p *PreviewPolicyEligibilityOnlineEvaluationsRequest) SetEnvironment(environment *PreviewPolicyEligibilityOnlineEvaluationsRequestEnvironment) {
	p.Environment = environment
	p.require(previewPolicyEligibilityOnlineEvaluationsRequestFieldEnvironment)
}

type PolicyInputEnvironment string

const (
	PolicyInputEnvironmentProduction  PolicyInputEnvironment = "production"
	PolicyInputEnvironmentStaging     PolicyInputEnvironment = "staging"
	PolicyInputEnvironmentDevelopment PolicyInputEnvironment = "development"
)

func NewPolicyInputEnvironmentFromString(s string) (PolicyInputEnvironment, error) {
	switch s {
	case "production":
		return PolicyInputEnvironmentProduction, nil
	case "staging":
		return PolicyInputEnvironmentStaging, nil
	case "development":
		return PolicyInputEnvironmentDevelopment, nil
	}
	var t PolicyInputEnvironment
	return "", fmt.Errorf("%s is not a valid %T", s, t)
}

func (p PolicyInputEnvironment) Ptr() *PolicyInputEnvironment {
	return &p
}

type PreviewPolicyEligibilityOnlineEvaluationsRequestEnvironment string

const (
	PreviewPolicyEligibilityOnlineEvaluationsRequestEnvironmentProduction  PreviewPolicyEligibilityOnlineEvaluationsRequestEnvironment = "production"
	PreviewPolicyEligibilityOnlineEvaluationsRequestEnvironmentStaging     PreviewPolicyEligibilityOnlineEvaluationsRequestEnvironment = "staging"
	PreviewPolicyEligibilityOnlineEvaluationsRequestEnvironmentDevelopment PreviewPolicyEligibilityOnlineEvaluationsRequestEnvironment = "development"
)

func NewPreviewPolicyEligibilityOnlineEvaluationsRequestEnvironmentFromString(s string) (PreviewPolicyEligibilityOnlineEvaluationsRequestEnvironment, error) {
	switch s {
	case "production":
		return PreviewPolicyEligibilityOnlineEvaluationsRequestEnvironmentProduction, nil
	case "staging":
		return PreviewPolicyEligibilityOnlineEvaluationsRequestEnvironmentStaging, nil
	case "development":
		return PreviewPolicyEligibilityOnlineEvaluationsRequestEnvironmentDevelopment, nil
	}
	var t PreviewPolicyEligibilityOnlineEvaluationsRequestEnvironment
	return "", fmt.Errorf("%s is not a valid %T", s, t)
}

func (p PreviewPolicyEligibilityOnlineEvaluationsRequestEnvironment) Ptr() *PreviewPolicyEligibilityOnlineEvaluationsRequestEnvironment {
	return &p
}

var (
	policyStateFieldEnabled = big.NewInt(1 << 0)
)

type PolicyState struct {
	Enabled bool `json:"enabled" url:"-"`

	// Private bitmask of fields set to an explicit value and therefore not to be omitted
	explicitFields *big.Int `json:"-" url:"-"`
}

func (p *PolicyState) require(field *big.Int) {
	if p.explicitFields == nil {
		p.explicitFields = big.NewInt(0)
	}
	p.explicitFields.Or(p.explicitFields, field)
}

// SetEnabled sets the Enabled field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (p *PolicyState) SetEnabled(enabled bool) {
	p.Enabled = enabled
	p.require(policyStateFieldEnabled)
}

func (p *PolicyState) UnmarshalJSON(data []byte) error {
	type unmarshaler PolicyState
	var body unmarshaler
	if err := json.Unmarshal(data, &body); err != nil {
		return err
	}
	*p = PolicyState(body)
	return nil
}

func (p *PolicyState) MarshalJSON() ([]byte, error) {
	type embed PolicyState
	var marshaler = struct {
		embed
	}{
		embed: embed(*p),
	}
	explicitMarshaler := internal.HandleExplicitFields(marshaler, p.explicitFields)
	return json.Marshal(explicitMarshaler)
}
