
package api

import (
	json "encoding/json"
	fmt "fmt"
	internal "github.com/aadi-labs/sikaru-sdk/go/internal"
	big "math/big"
)

var (
	createReviewQueueItemRequestFieldAction           = big.NewInt(1 << 0)
	createReviewQueueItemRequestFieldAgentID          = big.NewInt(1 << 1)
	createReviewQueueItemRequestFieldBackfillWindow   = big.NewInt(1 << 2)
	createReviewQueueItemRequestFieldFilterExpression = big.NewInt(1 << 3)
	createReviewQueueItemRequestFieldIssueID          = big.NewInt(1 << 4)
	createReviewQueueItemRequestFieldIssueTitle       = big.NewInt(1 << 5)
	createReviewQueueItemRequestFieldRuleID           = big.NewInt(1 << 6)
	createReviewQueueItemRequestFieldRuleName         = big.NewInt(1 << 7)
	createReviewQueueItemRequestFieldSampleRate       = big.NewInt(1 << 8)
	createReviewQueueItemRequestFieldSignalTags       = big.NewInt(1 << 9)
	createReviewQueueItemRequestFieldTarget           = big.NewInt(1 << 10)
	createReviewQueueItemRequestFieldTraceIDs         = big.NewInt(1 << 11)
)

type CreateReviewQueueItemRequest struct {
	Action           *CreateReviewQueueItemRequestAction `json:"action,omitempty" url:"-"`
	AgentID          *string                             `json:"agentId,omitempty" url:"-"`
	BackfillWindow   *string                             `json:"backfillWindow,omitempty" url:"-"`
	FilterExpression *string                             `json:"filterExpression,omitempty" url:"-"`
	IssueID          *string                             `json:"issueId,omitempty" url:"-"`
	IssueTitle       *string                             `json:"issueTitle,omitempty" url:"-"`
	RuleID           *string                             `json:"ruleId,omitempty" url:"-"`
	RuleName         *string                             `json:"ruleName,omitempty" url:"-"`
	SampleRate       *string                             `json:"sampleRate,omitempty" url:"-"`
	SignalTags       []string                            `json:"signalTags,omitempty" url:"-"`
	Target           *string                             `json:"target,omitempty" url:"-"`
	TraceIDs         []string                            `json:"traceIds" url:"-"`

	// Private bitmask of fields set to an explicit value and therefore not to be omitted
	explicitFields *big.Int `json:"-" url:"-"`
}

func (c *CreateReviewQueueItemRequest) require(field *big.Int) {
	if c.explicitFields == nil {
		c.explicitFields = big.NewInt(0)
	}
	c.explicitFields.Or(c.explicitFields, field)
}

// SetAction sets the Action field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (c *CreateReviewQueueItemRequest) SetAction(action *CreateReviewQueueItemRequestAction) {
	c.Action = action
	c.require(createReviewQueueItemRequestFieldAction)
}

// SetAgentID sets the AgentID field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (c *CreateReviewQueueItemRequest) SetAgentID(agentID *string) {
	c.AgentID = agentID
	c.require(createReviewQueueItemRequestFieldAgentID)
}

// SetBackfillWindow sets the BackfillWindow field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (c *CreateReviewQueueItemRequest) SetBackfillWindow(backfillWindow *string) {
	c.BackfillWindow = backfillWindow
	c.require(createReviewQueueItemRequestFieldBackfillWindow)
}

// SetFilterExpression sets the FilterExpression field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (c *CreateReviewQueueItemRequest) SetFilterExpression(filterExpression *string) {
	c.FilterExpression = filterExpression
	c.require(createReviewQueueItemRequestFieldFilterExpression)
}

// SetIssueID sets the IssueID field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (c *CreateReviewQueueItemRequest) SetIssueID(issueID *string) {
	c.IssueID = issueID
	c.require(createReviewQueueItemRequestFieldIssueID)
}

// SetIssueTitle sets the IssueTitle field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (c *CreateReviewQueueItemRequest) SetIssueTitle(issueTitle *string) {
	c.IssueTitle = issueTitle
	c.require(createReviewQueueItemRequestFieldIssueTitle)
}

// SetRuleID sets the RuleID field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (c *CreateReviewQueueItemRequest) SetRuleID(ruleID *string) {
	c.RuleID = ruleID
	c.require(createReviewQueueItemRequestFieldRuleID)
}

// SetRuleName sets the RuleName field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (c *CreateReviewQueueItemRequest) SetRuleName(ruleName *string) {
	c.RuleName = ruleName
	c.require(createReviewQueueItemRequestFieldRuleName)
}

// SetSampleRate sets the SampleRate field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (c *CreateReviewQueueItemRequest) SetSampleRate(sampleRate *string) {
	c.SampleRate = sampleRate
	c.require(createReviewQueueItemRequestFieldSampleRate)
}

// SetSignalTags sets the SignalTags field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (c *CreateReviewQueueItemRequest) SetSignalTags(signalTags []string) {
	c.SignalTags = signalTags
	c.require(createReviewQueueItemRequestFieldSignalTags)
}

// SetTarget sets the Target field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (c *CreateReviewQueueItemRequest) SetTarget(target *string) {
	c.Target = target
	c.require(createReviewQueueItemRequestFieldTarget)
}

// SetTraceIDs sets the TraceIDs field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (c *CreateReviewQueueItemRequest) SetTraceIDs(traceIDs []string) {
	c.TraceIDs = traceIDs
	c.require(createReviewQueueItemRequestFieldTraceIDs)
}

func (c *CreateReviewQueueItemRequest) UnmarshalJSON(data []byte) error {
	type unmarshaler CreateReviewQueueItemRequest
	var body unmarshaler
	if err := json.Unmarshal(data, &body); err != nil {
		return err
	}
	*c = CreateReviewQueueItemRequest(body)
	return nil
}

func (c *CreateReviewQueueItemRequest) MarshalJSON() ([]byte, error) {
	type embed CreateReviewQueueItemRequest
	var marshaler = struct {
		embed
	}{
		embed: embed(*c),
	}
	explicitMarshaler := internal.HandleExplicitFields(marshaler, c.explicitFields)
	return json.Marshal(explicitMarshaler)
}

type CreateReviewQueueItemRequestAction string

const (
	CreateReviewQueueItemRequestActionReviewQueue    CreateReviewQueueItemRequestAction = "review_queue"
	CreateReviewQueueItemRequestActionNotifyReviewer CreateReviewQueueItemRequestAction = "notify_reviewer"
)

func NewCreateReviewQueueItemRequestActionFromString(s string) (CreateReviewQueueItemRequestAction, error) {
	switch s {
	case "review_queue":
		return CreateReviewQueueItemRequestActionReviewQueue, nil
	case "notify_reviewer":
		return CreateReviewQueueItemRequestActionNotifyReviewer, nil
	}
	var t CreateReviewQueueItemRequestAction
	return "", fmt.Errorf("%s is not a valid %T", s, t)
}

func (c CreateReviewQueueItemRequestAction) Ptr() *CreateReviewQueueItemRequestAction {
	return &c
}
