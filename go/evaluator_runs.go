
package api

import (
	json "encoding/json"
	internal "github.com/aadi-labs/sikaru-sdk/go/internal"
	big "math/big"
)

var (
	createEvaluatorRunRequestFieldAgentID          = big.NewInt(1 << 0)
	createEvaluatorRunRequestFieldBackfillWindow   = big.NewInt(1 << 1)
	createEvaluatorRunRequestFieldDatasetName      = big.NewInt(1 << 2)
	createEvaluatorRunRequestFieldEvaluatorName    = big.NewInt(1 << 3)
	createEvaluatorRunRequestFieldFilterExpression = big.NewInt(1 << 4)
	createEvaluatorRunRequestFieldIssueID          = big.NewInt(1 << 5)
	createEvaluatorRunRequestFieldIssueTitle       = big.NewInt(1 << 6)
	createEvaluatorRunRequestFieldSampleRate       = big.NewInt(1 << 7)
	createEvaluatorRunRequestFieldSignalTags       = big.NewInt(1 << 8)
	createEvaluatorRunRequestFieldTraceIDs         = big.NewInt(1 << 9)
)

type CreateEvaluatorRunRequest struct {
	AgentID          *string  `json:"agentId,omitempty" url:"-"`
	BackfillWindow   *string  `json:"backfillWindow,omitempty" url:"-"`
	DatasetName      *string  `json:"datasetName,omitempty" url:"-"`
	EvaluatorName    *string  `json:"evaluatorName,omitempty" url:"-"`
	FilterExpression *string  `json:"filterExpression,omitempty" url:"-"`
	IssueID          *string  `json:"issueId,omitempty" url:"-"`
	IssueTitle       *string  `json:"issueTitle,omitempty" url:"-"`
	SampleRate       *string  `json:"sampleRate,omitempty" url:"-"`
	SignalTags       []string `json:"signalTags,omitempty" url:"-"`
	TraceIDs         []string `json:"traceIds" url:"-"`

	// Private bitmask of fields set to an explicit value and therefore not to be omitted
	explicitFields *big.Int `json:"-" url:"-"`
}

func (c *CreateEvaluatorRunRequest) require(field *big.Int) {
	if c.explicitFields == nil {
		c.explicitFields = big.NewInt(0)
	}
	c.explicitFields.Or(c.explicitFields, field)
}

// SetAgentID sets the AgentID field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (c *CreateEvaluatorRunRequest) SetAgentID(agentID *string) {
	c.AgentID = agentID
	c.require(createEvaluatorRunRequestFieldAgentID)
}

// SetBackfillWindow sets the BackfillWindow field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (c *CreateEvaluatorRunRequest) SetBackfillWindow(backfillWindow *string) {
	c.BackfillWindow = backfillWindow
	c.require(createEvaluatorRunRequestFieldBackfillWindow)
}

// SetDatasetName sets the DatasetName field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (c *CreateEvaluatorRunRequest) SetDatasetName(datasetName *string) {
	c.DatasetName = datasetName
	c.require(createEvaluatorRunRequestFieldDatasetName)
}

// SetEvaluatorName sets the EvaluatorName field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (c *CreateEvaluatorRunRequest) SetEvaluatorName(evaluatorName *string) {
	c.EvaluatorName = evaluatorName
	c.require(createEvaluatorRunRequestFieldEvaluatorName)
}

// SetFilterExpression sets the FilterExpression field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (c *CreateEvaluatorRunRequest) SetFilterExpression(filterExpression *string) {
	c.FilterExpression = filterExpression
	c.require(createEvaluatorRunRequestFieldFilterExpression)
}

// SetIssueID sets the IssueID field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (c *CreateEvaluatorRunRequest) SetIssueID(issueID *string) {
	c.IssueID = issueID
	c.require(createEvaluatorRunRequestFieldIssueID)
}

// SetIssueTitle sets the IssueTitle field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (c *CreateEvaluatorRunRequest) SetIssueTitle(issueTitle *string) {
	c.IssueTitle = issueTitle
	c.require(createEvaluatorRunRequestFieldIssueTitle)
}

// SetSampleRate sets the SampleRate field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (c *CreateEvaluatorRunRequest) SetSampleRate(sampleRate *string) {
	c.SampleRate = sampleRate
	c.require(createEvaluatorRunRequestFieldSampleRate)
}

// SetSignalTags sets the SignalTags field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (c *CreateEvaluatorRunRequest) SetSignalTags(signalTags []string) {
	c.SignalTags = signalTags
	c.require(createEvaluatorRunRequestFieldSignalTags)
}

// SetTraceIDs sets the TraceIDs field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (c *CreateEvaluatorRunRequest) SetTraceIDs(traceIDs []string) {
	c.TraceIDs = traceIDs
	c.require(createEvaluatorRunRequestFieldTraceIDs)
}

func (c *CreateEvaluatorRunRequest) UnmarshalJSON(data []byte) error {
	type unmarshaler CreateEvaluatorRunRequest
	var body unmarshaler
	if err := json.Unmarshal(data, &body); err != nil {
		return err
	}
	*c = CreateEvaluatorRunRequest(body)
	return nil
}

func (c *CreateEvaluatorRunRequest) MarshalJSON() ([]byte, error) {
	type embed CreateEvaluatorRunRequest
	var marshaler = struct {
		embed
	}{
		embed: embed(*c),
	}
	explicitMarshaler := internal.HandleExplicitFields(marshaler, c.explicitFields)
	return json.Marshal(explicitMarshaler)
}
