
package api

import (
	json "encoding/json"
	internal "github.com/aadi-labs/sikaru-sdk/go/internal"
	big "math/big"
)

var (
	listIssueClustersIssueClustersRequestFieldStatus   = big.NewInt(1 << 0)
	listIssueClustersIssueClustersRequestFieldSeverity = big.NewInt(1 << 1)
)

type ListIssueClustersIssueClustersRequest struct {
	Status   *string `json:"-" url:"status,omitempty"`
	Severity *string `json:"-" url:"severity,omitempty"`

	// Private bitmask of fields set to an explicit value and therefore not to be omitted
	explicitFields *big.Int `json:"-" url:"-"`
}

func (l *ListIssueClustersIssueClustersRequest) require(field *big.Int) {
	if l.explicitFields == nil {
		l.explicitFields = big.NewInt(0)
	}
	l.explicitFields.Or(l.explicitFields, field)
}

// SetStatus sets the Status field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (l *ListIssueClustersIssueClustersRequest) SetStatus(status *string) {
	l.Status = status
	l.require(listIssueClustersIssueClustersRequestFieldStatus)
}

// SetSeverity sets the Severity field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (l *ListIssueClustersIssueClustersRequest) SetSeverity(severity *string) {
	l.Severity = severity
	l.require(listIssueClustersIssueClustersRequestFieldSeverity)
}

var (
	mineProjectIssueClustersIssueClustersRequestFieldSince = big.NewInt(1 << 0)
	mineProjectIssueClustersIssueClustersRequestFieldUntil = big.NewInt(1 << 1)
)

type MineProjectIssueClustersIssueClustersRequest struct {
	Since *string `json:"-" url:"since,omitempty"`
	Until *string `json:"-" url:"until,omitempty"`

	// Private bitmask of fields set to an explicit value and therefore not to be omitted
	explicitFields *big.Int `json:"-" url:"-"`
}

func (m *MineProjectIssueClustersIssueClustersRequest) require(field *big.Int) {
	if m.explicitFields == nil {
		m.explicitFields = big.NewInt(0)
	}
	m.explicitFields.Or(m.explicitFields, field)
}

// SetSince sets the Since field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (m *MineProjectIssueClustersIssueClustersRequest) SetSince(since *string) {
	m.Since = since
	m.require(mineProjectIssueClustersIssueClustersRequestFieldSince)
}

// SetUntil sets the Until field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (m *MineProjectIssueClustersIssueClustersRequest) SetUntil(until *string) {
	m.Until = until
	m.require(mineProjectIssueClustersIssueClustersRequestFieldUntil)
}

var (
	updateIssueClusterStatusRequestFieldStatus = big.NewInt(1 << 0)
)

type UpdateIssueClusterStatusRequest struct {
	Status string `json:"status" url:"-"`

	// Private bitmask of fields set to an explicit value and therefore not to be omitted
	explicitFields *big.Int `json:"-" url:"-"`
}

func (u *UpdateIssueClusterStatusRequest) require(field *big.Int) {
	if u.explicitFields == nil {
		u.explicitFields = big.NewInt(0)
	}
	u.explicitFields.Or(u.explicitFields, field)
}

// SetStatus sets the Status field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (u *UpdateIssueClusterStatusRequest) SetStatus(status string) {
	u.Status = status
	u.require(updateIssueClusterStatusRequestFieldStatus)
}

func (u *UpdateIssueClusterStatusRequest) UnmarshalJSON(data []byte) error {
	type unmarshaler UpdateIssueClusterStatusRequest
	var body unmarshaler
	if err := json.Unmarshal(data, &body); err != nil {
		return err
	}
	*u = UpdateIssueClusterStatusRequest(body)
	return nil
}

func (u *UpdateIssueClusterStatusRequest) MarshalJSON() ([]byte, error) {
	type embed UpdateIssueClusterStatusRequest
	var marshaler = struct {
		embed
	}{
		embed: embed(*u),
	}
	explicitMarshaler := internal.HandleExplicitFields(marshaler, u.explicitFields)
	return json.Marshal(explicitMarshaler)
}

var (
	upsertIssueClusterRequestFieldAgentID    = big.NewInt(1 << 0)
	upsertIssueClusterRequestFieldImpact     = big.NewInt(1 << 1)
	upsertIssueClusterRequestFieldIssueID    = big.NewInt(1 << 2)
	upsertIssueClusterRequestFieldIssueTitle = big.NewInt(1 << 3)
	upsertIssueClusterRequestFieldLabel      = big.NewInt(1 << 4)
	upsertIssueClusterRequestFieldSignalTags = big.NewInt(1 << 5)
	upsertIssueClusterRequestFieldTraceIDs   = big.NewInt(1 << 6)
)

type UpsertIssueClusterRequest struct {
	AgentID    *string  `json:"agentId,omitempty" url:"-"`
	Impact     *int     `json:"impact,omitempty" url:"-"`
	IssueID    *string  `json:"issueId,omitempty" url:"-"`
	IssueTitle *string  `json:"issueTitle,omitempty" url:"-"`
	Label      string   `json:"label" url:"-"`
	SignalTags []string `json:"signalTags,omitempty" url:"-"`
	TraceIDs   []string `json:"traceIds" url:"-"`

	// Private bitmask of fields set to an explicit value and therefore not to be omitted
	explicitFields *big.Int `json:"-" url:"-"`
}

func (u *UpsertIssueClusterRequest) require(field *big.Int) {
	if u.explicitFields == nil {
		u.explicitFields = big.NewInt(0)
	}
	u.explicitFields.Or(u.explicitFields, field)
}

// SetAgentID sets the AgentID field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (u *UpsertIssueClusterRequest) SetAgentID(agentID *string) {
	u.AgentID = agentID
	u.require(upsertIssueClusterRequestFieldAgentID)
}

// SetImpact sets the Impact field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (u *UpsertIssueClusterRequest) SetImpact(impact *int) {
	u.Impact = impact
	u.require(upsertIssueClusterRequestFieldImpact)
}

// SetIssueID sets the IssueID field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (u *UpsertIssueClusterRequest) SetIssueID(issueID *string) {
	u.IssueID = issueID
	u.require(upsertIssueClusterRequestFieldIssueID)
}

// SetIssueTitle sets the IssueTitle field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (u *UpsertIssueClusterRequest) SetIssueTitle(issueTitle *string) {
	u.IssueTitle = issueTitle
	u.require(upsertIssueClusterRequestFieldIssueTitle)
}

// SetLabel sets the Label field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (u *UpsertIssueClusterRequest) SetLabel(label string) {
	u.Label = label
	u.require(upsertIssueClusterRequestFieldLabel)
}

// SetSignalTags sets the SignalTags field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (u *UpsertIssueClusterRequest) SetSignalTags(signalTags []string) {
	u.SignalTags = signalTags
	u.require(upsertIssueClusterRequestFieldSignalTags)
}

// SetTraceIDs sets the TraceIDs field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (u *UpsertIssueClusterRequest) SetTraceIDs(traceIDs []string) {
	u.TraceIDs = traceIDs
	u.require(upsertIssueClusterRequestFieldTraceIDs)
}

func (u *UpsertIssueClusterRequest) UnmarshalJSON(data []byte) error {
	type unmarshaler UpsertIssueClusterRequest
	var body unmarshaler
	if err := json.Unmarshal(data, &body); err != nil {
		return err
	}
	*u = UpsertIssueClusterRequest(body)
	return nil
}

func (u *UpsertIssueClusterRequest) MarshalJSON() ([]byte, error) {
	type embed UpsertIssueClusterRequest
	var marshaler = struct {
		embed
	}{
		embed: embed(*u),
	}
	explicitMarshaler := internal.HandleExplicitFields(marshaler, u.explicitFields)
	return json.Marshal(explicitMarshaler)
}
