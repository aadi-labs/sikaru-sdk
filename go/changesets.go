
package api

import (
	json "encoding/json"
	fmt "fmt"
	internal "github.com/aadi-labs/sikaru-sdk/go/internal"
	big "math/big"
)

var (
	createChangeSetRequestFieldAgentID            = big.NewInt(1 << 0)
	createChangeSetRequestFieldBaseReleaseID      = big.NewInt(1 << 1)
	createChangeSetRequestFieldCandidateReleaseID = big.NewInt(1 << 2)
	createChangeSetRequestFieldPublicSummary      = big.NewInt(1 << 3)
	createChangeSetRequestFieldPublicTitle        = big.NewInt(1 << 4)
	createChangeSetRequestFieldScopeRef           = big.NewInt(1 << 5)
	createChangeSetRequestFieldScopeType          = big.NewInt(1 << 6)
	createChangeSetRequestFieldSourceType         = big.NewInt(1 << 7)
	createChangeSetRequestFieldWorkflowID         = big.NewInt(1 << 8)
)

type CreateChangeSetRequest struct {
	AgentID            *string    `json:"agentId,omitempty" url:"-"`
	BaseReleaseID      *string    `json:"baseReleaseId,omitempty" url:"-"`
	CandidateReleaseID *string    `json:"candidateReleaseId,omitempty" url:"-"`
	PublicSummary      string     `json:"publicSummary" url:"-"`
	PublicTitle        string     `json:"publicTitle" url:"-"`
	ScopeRef           string     `json:"scopeRef" url:"-"`
	ScopeType          ScopeType  `json:"scopeType" url:"-"`
	SourceType         SourceType `json:"sourceType" url:"-"`
	WorkflowID         *string    `json:"workflowId,omitempty" url:"-"`

	// Private bitmask of fields set to an explicit value and therefore not to be omitted
	explicitFields *big.Int `json:"-" url:"-"`
}

func (c *CreateChangeSetRequest) require(field *big.Int) {
	if c.explicitFields == nil {
		c.explicitFields = big.NewInt(0)
	}
	c.explicitFields.Or(c.explicitFields, field)
}

// SetAgentID sets the AgentID field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (c *CreateChangeSetRequest) SetAgentID(agentID *string) {
	c.AgentID = agentID
	c.require(createChangeSetRequestFieldAgentID)
}

// SetBaseReleaseID sets the BaseReleaseID field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (c *CreateChangeSetRequest) SetBaseReleaseID(baseReleaseID *string) {
	c.BaseReleaseID = baseReleaseID
	c.require(createChangeSetRequestFieldBaseReleaseID)
}

// SetCandidateReleaseID sets the CandidateReleaseID field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (c *CreateChangeSetRequest) SetCandidateReleaseID(candidateReleaseID *string) {
	c.CandidateReleaseID = candidateReleaseID
	c.require(createChangeSetRequestFieldCandidateReleaseID)
}

// SetPublicSummary sets the PublicSummary field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (c *CreateChangeSetRequest) SetPublicSummary(publicSummary string) {
	c.PublicSummary = publicSummary
	c.require(createChangeSetRequestFieldPublicSummary)
}

// SetPublicTitle sets the PublicTitle field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (c *CreateChangeSetRequest) SetPublicTitle(publicTitle string) {
	c.PublicTitle = publicTitle
	c.require(createChangeSetRequestFieldPublicTitle)
}

// SetScopeRef sets the ScopeRef field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (c *CreateChangeSetRequest) SetScopeRef(scopeRef string) {
	c.ScopeRef = scopeRef
	c.require(createChangeSetRequestFieldScopeRef)
}

// SetScopeType sets the ScopeType field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (c *CreateChangeSetRequest) SetScopeType(scopeType ScopeType) {
	c.ScopeType = scopeType
	c.require(createChangeSetRequestFieldScopeType)
}

// SetSourceType sets the SourceType field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (c *CreateChangeSetRequest) SetSourceType(sourceType SourceType) {
	c.SourceType = sourceType
	c.require(createChangeSetRequestFieldSourceType)
}

// SetWorkflowID sets the WorkflowID field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (c *CreateChangeSetRequest) SetWorkflowID(workflowID *string) {
	c.WorkflowID = workflowID
	c.require(createChangeSetRequestFieldWorkflowID)
}

func (c *CreateChangeSetRequest) UnmarshalJSON(data []byte) error {
	type unmarshaler CreateChangeSetRequest
	var body unmarshaler
	if err := json.Unmarshal(data, &body); err != nil {
		return err
	}
	*c = CreateChangeSetRequest(body)
	return nil
}

func (c *CreateChangeSetRequest) MarshalJSON() ([]byte, error) {
	type embed CreateChangeSetRequest
	var marshaler = struct {
		embed
	}{
		embed: embed(*c),
	}
	explicitMarshaler := internal.HandleExplicitFields(marshaler, c.explicitFields)
	return json.Marshal(explicitMarshaler)
}

var (
	listChangesetsChangesetsRequestFieldStatus = big.NewInt(1 << 0)
)

type ListChangesetsChangesetsRequest struct {
	Status *ListChangesetsChangesetsRequestStatus `json:"-" url:"status,omitempty"`

	// Private bitmask of fields set to an explicit value and therefore not to be omitted
	explicitFields *big.Int `json:"-" url:"-"`
}

func (l *ListChangesetsChangesetsRequest) require(field *big.Int) {
	if l.explicitFields == nil {
		l.explicitFields = big.NewInt(0)
	}
	l.explicitFields.Or(l.explicitFields, field)
}

// SetStatus sets the Status field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (l *ListChangesetsChangesetsRequest) SetStatus(status *ListChangesetsChangesetsRequestStatus) {
	l.Status = status
	l.require(listChangesetsChangesetsRequestFieldStatus)
}

var (
	releaseActionRequestFieldReleaseTarget = big.NewInt(1 << 0)
)

type ReleaseActionRequest struct {
	ReleaseTarget *string `json:"releaseTarget,omitempty" url:"releaseTarget,omitempty"`

	// Private bitmask of fields set to an explicit value and therefore not to be omitted
	explicitFields *big.Int `json:"-" url:"-"`

	extraProperties map[string]interface{}
	rawJSON         json.RawMessage
}

func (r *ReleaseActionRequest) GetReleaseTarget() *string {
	if r == nil {
		return nil
	}
	return r.ReleaseTarget
}

func (r *ReleaseActionRequest) GetExtraProperties() map[string]interface{} {
	if r == nil {
		return nil
	}
	return r.extraProperties
}

func (r *ReleaseActionRequest) require(field *big.Int) {
	if r.explicitFields == nil {
		r.explicitFields = big.NewInt(0)
	}
	r.explicitFields.Or(r.explicitFields, field)
}

// SetReleaseTarget sets the ReleaseTarget field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (r *ReleaseActionRequest) SetReleaseTarget(releaseTarget *string) {
	r.ReleaseTarget = releaseTarget
	r.require(releaseActionRequestFieldReleaseTarget)
}

func (r *ReleaseActionRequest) UnmarshalJSON(data []byte) error {
	type unmarshaler ReleaseActionRequest
	var value unmarshaler
	if err := json.Unmarshal(data, &value); err != nil {
		return err
	}
	*r = ReleaseActionRequest(value)
	extraProperties, err := internal.ExtractExtraProperties(data, *r)
	if err != nil {
		return err
	}
	r.extraProperties = extraProperties
	r.rawJSON = json.RawMessage(data)
	return nil
}

func (r *ReleaseActionRequest) MarshalJSON() ([]byte, error) {
	type embed ReleaseActionRequest
	var marshaler = struct {
		embed
	}{
		embed: embed(*r),
	}
	explicitMarshaler := internal.HandleExplicitFields(marshaler, r.explicitFields)
	return json.Marshal(explicitMarshaler)
}

func (r *ReleaseActionRequest) String() string {
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

type ScopeType string

const (
	ScopeTypeGlobal       ScopeType = "global"
	ScopeTypeOrganization ScopeType = "organization"
	ScopeTypeProject      ScopeType = "project"
	ScopeTypeProduct      ScopeType = "product"
	ScopeTypeAgent        ScopeType = "agent"
	ScopeTypeWorkflow     ScopeType = "workflow"
	ScopeTypeCohort       ScopeType = "cohort"
	ScopeTypeUser         ScopeType = "user"
	ScopeTypeRun          ScopeType = "run"
)

func NewScopeTypeFromString(s string) (ScopeType, error) {
	switch s {
	case "global":
		return ScopeTypeGlobal, nil
	case "organization":
		return ScopeTypeOrganization, nil
	case "project":
		return ScopeTypeProject, nil
	case "product":
		return ScopeTypeProduct, nil
	case "agent":
		return ScopeTypeAgent, nil
	case "workflow":
		return ScopeTypeWorkflow, nil
	case "cohort":
		return ScopeTypeCohort, nil
	case "user":
		return ScopeTypeUser, nil
	case "run":
		return ScopeTypeRun, nil
	}
	var t ScopeType
	return "", fmt.Errorf("%s is not a valid %T", s, t)
}

func (s ScopeType) Ptr() *ScopeType {
	return &s
}

type SourceType string

const (
	SourceTypeImport        SourceType = "import"
	SourceTypeOptimizer     SourceType = "optimizer"
	SourceTypeManualRelease SourceType = "manual_release"
	SourceTypeRollback      SourceType = "rollback"
)

func NewSourceTypeFromString(s string) (SourceType, error) {
	switch s {
	case "import":
		return SourceTypeImport, nil
	case "optimizer":
		return SourceTypeOptimizer, nil
	case "manual_release":
		return SourceTypeManualRelease, nil
	case "rollback":
		return SourceTypeRollback, nil
	}
	var t SourceType
	return "", fmt.Errorf("%s is not a valid %T", s, t)
}

func (s SourceType) Ptr() *SourceType {
	return &s
}

type ListChangesetsChangesetsRequestStatus string

const (
	ListChangesetsChangesetsRequestStatusDraft          ListChangesetsChangesetsRequestStatus = "draft"
	ListChangesetsChangesetsRequestStatusReadyForReview ListChangesetsChangesetsRequestStatus = "ready_for_review"
	ListChangesetsChangesetsRequestStatusApproved       ListChangesetsChangesetsRequestStatus = "approved"
	ListChangesetsChangesetsRequestStatusStaging        ListChangesetsChangesetsRequestStatus = "staging"
	ListChangesetsChangesetsRequestStatusProduction     ListChangesetsChangesetsRequestStatus = "production"
	ListChangesetsChangesetsRequestStatusRejected       ListChangesetsChangesetsRequestStatus = "rejected"
	ListChangesetsChangesetsRequestStatusRolledBack     ListChangesetsChangesetsRequestStatus = "rolled_back"
)

func NewListChangesetsChangesetsRequestStatusFromString(s string) (ListChangesetsChangesetsRequestStatus, error) {
	switch s {
	case "draft":
		return ListChangesetsChangesetsRequestStatusDraft, nil
	case "ready_for_review":
		return ListChangesetsChangesetsRequestStatusReadyForReview, nil
	case "approved":
		return ListChangesetsChangesetsRequestStatusApproved, nil
	case "staging":
		return ListChangesetsChangesetsRequestStatusStaging, nil
	case "production":
		return ListChangesetsChangesetsRequestStatusProduction, nil
	case "rejected":
		return ListChangesetsChangesetsRequestStatusRejected, nil
	case "rolled_back":
		return ListChangesetsChangesetsRequestStatusRolledBack, nil
	}
	var t ListChangesetsChangesetsRequestStatus
	return "", fmt.Errorf("%s is not a valid %T", s, t)
}

func (l ListChangesetsChangesetsRequestStatus) Ptr() *ListChangesetsChangesetsRequestStatus {
	return &l
}
