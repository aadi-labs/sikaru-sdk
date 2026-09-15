
package api

import (
	json "encoding/json"
	fmt "fmt"
	internal "github.com/aadi-labs/sikaru-sdk/go/internal"
	big "math/big"
)

var (
	objectiveInputFieldCriterion      = big.NewInt(1 << 0)
	objectiveInputFieldEvidencePaths  = big.NewInt(1 << 1)
	objectiveInputFieldIdempotencyKey = big.NewInt(1 << 2)
	objectiveInputFieldObjective      = big.NewInt(1 << 3)
	objectiveInputFieldRunID          = big.NewInt(1 << 4)
	objectiveInputFieldSessionID      = big.NewInt(1 << 5)
)

type ObjectiveInput struct {
	Criterion      string   `json:"criterion" url:"-"`
	EvidencePaths  []string `json:"evidence_paths,omitempty" url:"-"`
	IdempotencyKey string   `json:"idempotency_key" url:"-"`
	Objective      string   `json:"objective" url:"-"`
	RunID          string   `json:"run_id" url:"-"`
	SessionID      string   `json:"session_id" url:"-"`

	// Private bitmask of fields set to an explicit value and therefore not to be omitted
	explicitFields *big.Int `json:"-" url:"-"`
}

func (o *ObjectiveInput) require(field *big.Int) {
	if o.explicitFields == nil {
		o.explicitFields = big.NewInt(0)
	}
	o.explicitFields.Or(o.explicitFields, field)
}

// SetCriterion sets the Criterion field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (o *ObjectiveInput) SetCriterion(criterion string) {
	o.Criterion = criterion
	o.require(objectiveInputFieldCriterion)
}

// SetEvidencePaths sets the EvidencePaths field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (o *ObjectiveInput) SetEvidencePaths(evidencePaths []string) {
	o.EvidencePaths = evidencePaths
	o.require(objectiveInputFieldEvidencePaths)
}

// SetIdempotencyKey sets the IdempotencyKey field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (o *ObjectiveInput) SetIdempotencyKey(idempotencyKey string) {
	o.IdempotencyKey = idempotencyKey
	o.require(objectiveInputFieldIdempotencyKey)
}

// SetObjective sets the Objective field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (o *ObjectiveInput) SetObjective(objective string) {
	o.Objective = objective
	o.require(objectiveInputFieldObjective)
}

// SetRunID sets the RunID field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (o *ObjectiveInput) SetRunID(runID string) {
	o.RunID = runID
	o.require(objectiveInputFieldRunID)
}

// SetSessionID sets the SessionID field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (o *ObjectiveInput) SetSessionID(sessionID string) {
	o.SessionID = sessionID
	o.require(objectiveInputFieldSessionID)
}

func (o *ObjectiveInput) UnmarshalJSON(data []byte) error {
	type unmarshaler ObjectiveInput
	var body unmarshaler
	if err := json.Unmarshal(data, &body); err != nil {
		return err
	}
	*o = ObjectiveInput(body)
	return nil
}

func (o *ObjectiveInput) MarshalJSON() ([]byte, error) {
	type embed ObjectiveInput
	var marshaler = struct {
		embed
	}{
		embed: embed(*o),
	}
	explicitMarshaler := internal.HandleExplicitFields(marshaler, o.explicitFields)
	return json.Marshal(explicitMarshaler)
}

var (
	listObjectivesExecutionObjectivesRequestFieldSessionID = big.NewInt(1 << 0)
	listObjectivesExecutionObjectivesRequestFieldStatus    = big.NewInt(1 << 1)
	listObjectivesExecutionObjectivesRequestFieldAfter     = big.NewInt(1 << 2)
	listObjectivesExecutionObjectivesRequestFieldLimit     = big.NewInt(1 << 3)
)

type ListObjectivesExecutionObjectivesRequest struct {
	SessionID *string `json:"-" url:"session_id,omitempty"`
	Status    *string `json:"-" url:"status,omitempty"`
	After     *string `json:"-" url:"after,omitempty"`
	Limit     *int    `json:"-" url:"limit,omitempty"`

	// Private bitmask of fields set to an explicit value and therefore not to be omitted
	explicitFields *big.Int `json:"-" url:"-"`
}

func (l *ListObjectivesExecutionObjectivesRequest) require(field *big.Int) {
	if l.explicitFields == nil {
		l.explicitFields = big.NewInt(0)
	}
	l.explicitFields.Or(l.explicitFields, field)
}

// SetSessionID sets the SessionID field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (l *ListObjectivesExecutionObjectivesRequest) SetSessionID(sessionID *string) {
	l.SessionID = sessionID
	l.require(listObjectivesExecutionObjectivesRequestFieldSessionID)
}

// SetStatus sets the Status field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (l *ListObjectivesExecutionObjectivesRequest) SetStatus(status *string) {
	l.Status = status
	l.require(listObjectivesExecutionObjectivesRequestFieldStatus)
}

// SetAfter sets the After field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (l *ListObjectivesExecutionObjectivesRequest) SetAfter(after *string) {
	l.After = after
	l.require(listObjectivesExecutionObjectivesRequestFieldAfter)
}

// SetLimit sets the Limit field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (l *ListObjectivesExecutionObjectivesRequest) SetLimit(limit *int) {
	l.Limit = limit
	l.require(listObjectivesExecutionObjectivesRequestFieldLimit)
}

var (
	resumeInputFieldSourceRunID = big.NewInt(1 << 0)
)

type ResumeInput struct {
	SourceRunID *string `json:"source_run_id,omitempty" url:"source_run_id,omitempty"`

	// Private bitmask of fields set to an explicit value and therefore not to be omitted
	explicitFields *big.Int `json:"-" url:"-"`

	extraProperties map[string]interface{}
	rawJSON         json.RawMessage
}

func (r *ResumeInput) GetSourceRunID() *string {
	if r == nil {
		return nil
	}
	return r.SourceRunID
}

func (r *ResumeInput) GetExtraProperties() map[string]interface{} {
	if r == nil {
		return nil
	}
	return r.extraProperties
}

func (r *ResumeInput) require(field *big.Int) {
	if r.explicitFields == nil {
		r.explicitFields = big.NewInt(0)
	}
	r.explicitFields.Or(r.explicitFields, field)
}

// SetSourceRunID sets the SourceRunID field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (r *ResumeInput) SetSourceRunID(sourceRunID *string) {
	r.SourceRunID = sourceRunID
	r.require(resumeInputFieldSourceRunID)
}

func (r *ResumeInput) UnmarshalJSON(data []byte) error {
	type unmarshaler ResumeInput
	var value unmarshaler
	if err := json.Unmarshal(data, &value); err != nil {
		return err
	}
	*r = ResumeInput(value)
	extraProperties, err := internal.ExtractExtraProperties(data, *r)
	if err != nil {
		return err
	}
	r.extraProperties = extraProperties
	r.rawJSON = json.RawMessage(data)
	return nil
}

func (r *ResumeInput) MarshalJSON() ([]byte, error) {
	type embed ResumeInput
	var marshaler = struct {
		embed
	}{
		embed: embed(*r),
	}
	explicitMarshaler := internal.HandleExplicitFields(marshaler, r.explicitFields)
	return json.Marshal(explicitMarshaler)
}

func (r *ResumeInput) String() string {
	if r == nil {
		return "<nil>"
	}
	if len(r.rawJSON) > 0 {
		if value, err := internal.StringifyJSON(r.rawJSON); err == nil {
			return value
		}
	}
	if value, err := internal.StringifyJSON(r); err == nil {
		return value
	}
	return fmt.Sprintf("%#v", r)
}
