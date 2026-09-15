
package api

import (
	json "encoding/json"
	fmt "fmt"
	internal "github.com/aadi-labs/sikaru-sdk/go/internal"
	big "math/big"
)

var (
	createFeedbackRequestFieldIssueID   = big.NewInt(1 << 0)
	createFeedbackRequestFieldKind      = big.NewInt(1 << 1)
	createFeedbackRequestFieldNote      = big.NewInt(1 << 2)
	createFeedbackRequestFieldSessionID = big.NewInt(1 << 3)
	createFeedbackRequestFieldSpanID    = big.NewInt(1 << 4)
	createFeedbackRequestFieldTag       = big.NewInt(1 << 5)
	createFeedbackRequestFieldTarget    = big.NewInt(1 << 6)
	createFeedbackRequestFieldTargetID  = big.NewInt(1 << 7)
	createFeedbackRequestFieldTraceID   = big.NewInt(1 << 8)
)

type CreateFeedbackRequest struct {
	IssueID   *string                     `json:"issueId,omitempty" url:"-"`
	Kind      CreateFeedbackRequestKind   `json:"kind" url:"-"`
	Note      *string                     `json:"note,omitempty" url:"-"`
	SessionID *string                     `json:"sessionId,omitempty" url:"-"`
	SpanID    *string                     `json:"spanId,omitempty" url:"-"`
	Tag       *string                     `json:"tag,omitempty" url:"-"`
	Target    CreateFeedbackRequestTarget `json:"target" url:"-"`
	TargetID  string                      `json:"targetId" url:"-"`
	TraceID   *string                     `json:"traceId,omitempty" url:"-"`

	// Private bitmask of fields set to an explicit value and therefore not to be omitted
	explicitFields *big.Int `json:"-" url:"-"`
}

func (c *CreateFeedbackRequest) require(field *big.Int) {
	if c.explicitFields == nil {
		c.explicitFields = big.NewInt(0)
	}
	c.explicitFields.Or(c.explicitFields, field)
}

// SetIssueID sets the IssueID field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (c *CreateFeedbackRequest) SetIssueID(issueID *string) {
	c.IssueID = issueID
	c.require(createFeedbackRequestFieldIssueID)
}

// SetKind sets the Kind field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (c *CreateFeedbackRequest) SetKind(kind CreateFeedbackRequestKind) {
	c.Kind = kind
	c.require(createFeedbackRequestFieldKind)
}

// SetNote sets the Note field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (c *CreateFeedbackRequest) SetNote(note *string) {
	c.Note = note
	c.require(createFeedbackRequestFieldNote)
}

// SetSessionID sets the SessionID field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (c *CreateFeedbackRequest) SetSessionID(sessionID *string) {
	c.SessionID = sessionID
	c.require(createFeedbackRequestFieldSessionID)
}

// SetSpanID sets the SpanID field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (c *CreateFeedbackRequest) SetSpanID(spanID *string) {
	c.SpanID = spanID
	c.require(createFeedbackRequestFieldSpanID)
}

// SetTag sets the Tag field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (c *CreateFeedbackRequest) SetTag(tag *string) {
	c.Tag = tag
	c.require(createFeedbackRequestFieldTag)
}

// SetTarget sets the Target field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (c *CreateFeedbackRequest) SetTarget(target CreateFeedbackRequestTarget) {
	c.Target = target
	c.require(createFeedbackRequestFieldTarget)
}

// SetTargetID sets the TargetID field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (c *CreateFeedbackRequest) SetTargetID(targetID string) {
	c.TargetID = targetID
	c.require(createFeedbackRequestFieldTargetID)
}

// SetTraceID sets the TraceID field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (c *CreateFeedbackRequest) SetTraceID(traceID *string) {
	c.TraceID = traceID
	c.require(createFeedbackRequestFieldTraceID)
}

func (c *CreateFeedbackRequest) UnmarshalJSON(data []byte) error {
	type unmarshaler CreateFeedbackRequest
	var body unmarshaler
	if err := json.Unmarshal(data, &body); err != nil {
		return err
	}
	*c = CreateFeedbackRequest(body)
	return nil
}

func (c *CreateFeedbackRequest) MarshalJSON() ([]byte, error) {
	type embed CreateFeedbackRequest
	var marshaler = struct {
		embed
	}{
		embed: embed(*c),
	}
	explicitMarshaler := internal.HandleExplicitFields(marshaler, c.explicitFields)
	return json.Marshal(explicitMarshaler)
}

type CreateFeedbackRequestKind string

const (
	CreateFeedbackRequestKindThumbsUp   CreateFeedbackRequestKind = "thumbs_up"
	CreateFeedbackRequestKindThumbsDown CreateFeedbackRequestKind = "thumbs_down"
	CreateFeedbackRequestKindAnnotation CreateFeedbackRequestKind = "annotation"
)

func NewCreateFeedbackRequestKindFromString(s string) (CreateFeedbackRequestKind, error) {
	switch s {
	case "thumbs_up":
		return CreateFeedbackRequestKindThumbsUp, nil
	case "thumbs_down":
		return CreateFeedbackRequestKindThumbsDown, nil
	case "annotation":
		return CreateFeedbackRequestKindAnnotation, nil
	}
	var t CreateFeedbackRequestKind
	return "", fmt.Errorf("%s is not a valid %T", s, t)
}

func (c CreateFeedbackRequestKind) Ptr() *CreateFeedbackRequestKind {
	return &c
}

type CreateFeedbackRequestTarget string

const (
	CreateFeedbackRequestTargetTrace   CreateFeedbackRequestTarget = "trace"
	CreateFeedbackRequestTargetSpan    CreateFeedbackRequestTarget = "span"
	CreateFeedbackRequestTargetSession CreateFeedbackRequestTarget = "session"
	CreateFeedbackRequestTargetIssue   CreateFeedbackRequestTarget = "issue"
)

func NewCreateFeedbackRequestTargetFromString(s string) (CreateFeedbackRequestTarget, error) {
	switch s {
	case "trace":
		return CreateFeedbackRequestTargetTrace, nil
	case "span":
		return CreateFeedbackRequestTargetSpan, nil
	case "session":
		return CreateFeedbackRequestTargetSession, nil
	case "issue":
		return CreateFeedbackRequestTargetIssue, nil
	}
	var t CreateFeedbackRequestTarget
	return "", fmt.Errorf("%s is not a valid %T", s, t)
}

func (c CreateFeedbackRequestTarget) Ptr() *CreateFeedbackRequestTarget {
	return &c
}
