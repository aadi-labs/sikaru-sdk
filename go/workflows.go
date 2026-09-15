
package api

import (
	json "encoding/json"
	fmt "fmt"
	internal "github.com/aadi-labs/sikaru-sdk/go/internal"
	big "math/big"
)

var (
	createWorkflowVersionRequestFieldReleaseChannel = big.NewInt(1 << 0)
	createWorkflowVersionRequestFieldStatus         = big.NewInt(1 << 1)
)

type CreateWorkflowVersionRequest struct {
	ReleaseChannel *CreateWorkflowVersionRequestReleaseChannel `json:"releaseChannel,omitempty" url:"-"`
	Status         *CreateWorkflowVersionRequestStatus         `json:"status,omitempty" url:"-"`

	// Private bitmask of fields set to an explicit value and therefore not to be omitted
	explicitFields *big.Int `json:"-" url:"-"`
}

func (c *CreateWorkflowVersionRequest) require(field *big.Int) {
	if c.explicitFields == nil {
		c.explicitFields = big.NewInt(0)
	}
	c.explicitFields.Or(c.explicitFields, field)
}

// SetReleaseChannel sets the ReleaseChannel field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (c *CreateWorkflowVersionRequest) SetReleaseChannel(releaseChannel *CreateWorkflowVersionRequestReleaseChannel) {
	c.ReleaseChannel = releaseChannel
	c.require(createWorkflowVersionRequestFieldReleaseChannel)
}

// SetStatus sets the Status field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (c *CreateWorkflowVersionRequest) SetStatus(status *CreateWorkflowVersionRequestStatus) {
	c.Status = status
	c.require(createWorkflowVersionRequestFieldStatus)
}

func (c *CreateWorkflowVersionRequest) UnmarshalJSON(data []byte) error {
	type unmarshaler CreateWorkflowVersionRequest
	var body unmarshaler
	if err := json.Unmarshal(data, &body); err != nil {
		return err
	}
	*c = CreateWorkflowVersionRequest(body)
	return nil
}

func (c *CreateWorkflowVersionRequest) MarshalJSON() ([]byte, error) {
	type embed CreateWorkflowVersionRequest
	var marshaler = struct {
		embed
	}{
		embed: embed(*c),
	}
	explicitMarshaler := internal.HandleExplicitFields(marshaler, c.explicitFields)
	return json.Marshal(explicitMarshaler)
}

var (
	importWorkflowRequestFieldPayload          = big.NewInt(1 << 0)
	importWorkflowRequestFieldSourceArtifactID = big.NewInt(1 << 1)
	importWorkflowRequestFieldWorkflowID       = big.NewInt(1 << 2)
)

type ImportWorkflowRequest struct {
	Payload          map[string]any `json:"payload" url:"-"`
	SourceArtifactID *string        `json:"sourceArtifactId,omitempty" url:"-"`
	WorkflowID       *string        `json:"workflowId,omitempty" url:"-"`

	// Private bitmask of fields set to an explicit value and therefore not to be omitted
	explicitFields *big.Int `json:"-" url:"-"`
}

func (i *ImportWorkflowRequest) require(field *big.Int) {
	if i.explicitFields == nil {
		i.explicitFields = big.NewInt(0)
	}
	i.explicitFields.Or(i.explicitFields, field)
}

// SetPayload sets the Payload field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (i *ImportWorkflowRequest) SetPayload(payload map[string]any) {
	i.Payload = payload
	i.require(importWorkflowRequestFieldPayload)
}

// SetSourceArtifactID sets the SourceArtifactID field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (i *ImportWorkflowRequest) SetSourceArtifactID(sourceArtifactID *string) {
	i.SourceArtifactID = sourceArtifactID
	i.require(importWorkflowRequestFieldSourceArtifactID)
}

// SetWorkflowID sets the WorkflowID field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (i *ImportWorkflowRequest) SetWorkflowID(workflowID *string) {
	i.WorkflowID = workflowID
	i.require(importWorkflowRequestFieldWorkflowID)
}

func (i *ImportWorkflowRequest) UnmarshalJSON(data []byte) error {
	type unmarshaler ImportWorkflowRequest
	var body unmarshaler
	if err := json.Unmarshal(data, &body); err != nil {
		return err
	}
	*i = ImportWorkflowRequest(body)
	return nil
}

func (i *ImportWorkflowRequest) MarshalJSON() ([]byte, error) {
	type embed ImportWorkflowRequest
	var marshaler = struct {
		embed
	}{
		embed: embed(*i),
	}
	explicitMarshaler := internal.HandleExplicitFields(marshaler, i.explicitFields)
	return json.Marshal(explicitMarshaler)
}

var (
	startWorkflowRunRequestFieldIdempotencyKey    = big.NewInt(1 << 0)
	startWorkflowRunRequestFieldInput             = big.NewInt(1 << 1)
	startWorkflowRunRequestFieldWorkflowVersionID = big.NewInt(1 << 2)
)

type StartWorkflowRunRequest struct {
	IdempotencyKey    *string        `json:"-" url:"-"`
	Input             map[string]any `json:"input,omitempty" url:"-"`
	WorkflowVersionID *string        `json:"workflowVersionId,omitempty" url:"-"`

	// Private bitmask of fields set to an explicit value and therefore not to be omitted
	explicitFields *big.Int `json:"-" url:"-"`
}

func (s *StartWorkflowRunRequest) require(field *big.Int) {
	if s.explicitFields == nil {
		s.explicitFields = big.NewInt(0)
	}
	s.explicitFields.Or(s.explicitFields, field)
}

// SetIdempotencyKey sets the IdempotencyKey field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (s *StartWorkflowRunRequest) SetIdempotencyKey(idempotencyKey *string) {
	s.IdempotencyKey = idempotencyKey
	s.require(startWorkflowRunRequestFieldIdempotencyKey)
}

// SetInput sets the Input field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (s *StartWorkflowRunRequest) SetInput(input map[string]any) {
	s.Input = input
	s.require(startWorkflowRunRequestFieldInput)
}

// SetWorkflowVersionID sets the WorkflowVersionID field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (s *StartWorkflowRunRequest) SetWorkflowVersionID(workflowVersionID *string) {
	s.WorkflowVersionID = workflowVersionID
	s.require(startWorkflowRunRequestFieldWorkflowVersionID)
}

func (s *StartWorkflowRunRequest) UnmarshalJSON(data []byte) error {
	type unmarshaler StartWorkflowRunRequest
	var body unmarshaler
	if err := json.Unmarshal(data, &body); err != nil {
		return err
	}
	*s = StartWorkflowRunRequest(body)
	return nil
}

func (s *StartWorkflowRunRequest) MarshalJSON() ([]byte, error) {
	type embed StartWorkflowRunRequest
	var marshaler = struct {
		embed
	}{
		embed: embed(*s),
	}
	explicitMarshaler := internal.HandleExplicitFields(marshaler, s.explicitFields)
	return json.Marshal(explicitMarshaler)
}

type CreateWorkflowVersionRequestReleaseChannel string

const (
	CreateWorkflowVersionRequestReleaseChannelDraft      CreateWorkflowVersionRequestReleaseChannel = "draft"
	CreateWorkflowVersionRequestReleaseChannelStaging    CreateWorkflowVersionRequestReleaseChannel = "staging"
	CreateWorkflowVersionRequestReleaseChannelProduction CreateWorkflowVersionRequestReleaseChannel = "production"
)

func NewCreateWorkflowVersionRequestReleaseChannelFromString(s string) (CreateWorkflowVersionRequestReleaseChannel, error) {
	switch s {
	case "draft":
		return CreateWorkflowVersionRequestReleaseChannelDraft, nil
	case "staging":
		return CreateWorkflowVersionRequestReleaseChannelStaging, nil
	case "production":
		return CreateWorkflowVersionRequestReleaseChannelProduction, nil
	}
	var t CreateWorkflowVersionRequestReleaseChannel
	return "", fmt.Errorf("%s is not a valid %T", s, t)
}

func (c CreateWorkflowVersionRequestReleaseChannel) Ptr() *CreateWorkflowVersionRequestReleaseChannel {
	return &c
}

type CreateWorkflowVersionRequestStatus string

const (
	CreateWorkflowVersionRequestStatusDraft    CreateWorkflowVersionRequestStatus = "draft"
	CreateWorkflowVersionRequestStatusActive   CreateWorkflowVersionRequestStatus = "active"
	CreateWorkflowVersionRequestStatusReplaced CreateWorkflowVersionRequestStatus = "replaced"
	CreateWorkflowVersionRequestStatusArchived CreateWorkflowVersionRequestStatus = "archived"
)

func NewCreateWorkflowVersionRequestStatusFromString(s string) (CreateWorkflowVersionRequestStatus, error) {
	switch s {
	case "draft":
		return CreateWorkflowVersionRequestStatusDraft, nil
	case "active":
		return CreateWorkflowVersionRequestStatusActive, nil
	case "replaced":
		return CreateWorkflowVersionRequestStatusReplaced, nil
	case "archived":
		return CreateWorkflowVersionRequestStatusArchived, nil
	}
	var t CreateWorkflowVersionRequestStatus
	return "", fmt.Errorf("%s is not a valid %T", s, t)
}

func (c CreateWorkflowVersionRequestStatus) Ptr() *CreateWorkflowVersionRequestStatus {
	return &c
}
