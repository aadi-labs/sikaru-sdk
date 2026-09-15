
package api

import (
	json "encoding/json"
	fmt "fmt"
	internal "github.com/aadi-labs/sikaru-sdk/go/internal"
	big "math/big"
)

var (
	turnInputFieldCapabilityGrants     = big.NewInt(1 << 0)
	turnInputFieldComputeProviderID    = big.NewInt(1 << 1)
	turnInputFieldDeliveryMode         = big.NewInt(1 << 2)
	turnInputFieldExecutionEnvironment = big.NewInt(1 << 3)
	turnInputFieldFileIDs              = big.NewInt(1 << 4)
	turnInputFieldIdempotencyKey       = big.NewInt(1 << 5)
	turnInputFieldInput                = big.NewInt(1 << 6)
	turnInputFieldProductContext       = big.NewInt(1 << 7)
	turnInputFieldRunMode              = big.NewInt(1 << 8)
	turnInputFieldToolProviderRefs     = big.NewInt(1 << 9)
)

type TurnInput struct {
	CapabilityGrants     []string                       `json:"capability_grants,omitempty" url:"-"`
	ComputeProviderID    *string                        `json:"compute_provider_id,omitempty" url:"-"`
	DeliveryMode         *TurnInputDeliveryMode         `json:"delivery_mode,omitempty" url:"-"`
	ExecutionEnvironment *TurnInputExecutionEnvironment `json:"execution_environment,omitempty" url:"-"`
	FileIDs              []string                       `json:"file_ids,omitempty" url:"-"`
	IdempotencyKey       string                         `json:"idempotency_key" url:"-"`
	Input                map[string]any                 `json:"input" url:"-"`
	ProductContext       map[string]any                 `json:"product_context,omitempty" url:"-"`
	RunMode              *TurnInputRunMode              `json:"run_mode,omitempty" url:"-"`
	ToolProviderRefs     []map[string]any               `json:"tool_provider_refs,omitempty" url:"-"`

	// Private bitmask of fields set to an explicit value and therefore not to be omitted
	explicitFields *big.Int `json:"-" url:"-"`
}

func (t *TurnInput) require(field *big.Int) {
	if t.explicitFields == nil {
		t.explicitFields = big.NewInt(0)
	}
	t.explicitFields.Or(t.explicitFields, field)
}

// SetCapabilityGrants sets the CapabilityGrants field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (t *TurnInput) SetCapabilityGrants(capabilityGrants []string) {
	t.CapabilityGrants = capabilityGrants
	t.require(turnInputFieldCapabilityGrants)
}

// SetComputeProviderID sets the ComputeProviderID field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (t *TurnInput) SetComputeProviderID(computeProviderID *string) {
	t.ComputeProviderID = computeProviderID
	t.require(turnInputFieldComputeProviderID)
}

// SetDeliveryMode sets the DeliveryMode field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (t *TurnInput) SetDeliveryMode(deliveryMode *TurnInputDeliveryMode) {
	t.DeliveryMode = deliveryMode
	t.require(turnInputFieldDeliveryMode)
}

// SetExecutionEnvironment sets the ExecutionEnvironment field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (t *TurnInput) SetExecutionEnvironment(executionEnvironment *TurnInputExecutionEnvironment) {
	t.ExecutionEnvironment = executionEnvironment
	t.require(turnInputFieldExecutionEnvironment)
}

// SetFileIDs sets the FileIDs field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (t *TurnInput) SetFileIDs(fileIDs []string) {
	t.FileIDs = fileIDs
	t.require(turnInputFieldFileIDs)
}

// SetIdempotencyKey sets the IdempotencyKey field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (t *TurnInput) SetIdempotencyKey(idempotencyKey string) {
	t.IdempotencyKey = idempotencyKey
	t.require(turnInputFieldIdempotencyKey)
}

// SetInput sets the Input field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (t *TurnInput) SetInput(input map[string]any) {
	t.Input = input
	t.require(turnInputFieldInput)
}

// SetProductContext sets the ProductContext field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (t *TurnInput) SetProductContext(productContext map[string]any) {
	t.ProductContext = productContext
	t.require(turnInputFieldProductContext)
}

// SetRunMode sets the RunMode field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (t *TurnInput) SetRunMode(runMode *TurnInputRunMode) {
	t.RunMode = runMode
	t.require(turnInputFieldRunMode)
}

// SetToolProviderRefs sets the ToolProviderRefs field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (t *TurnInput) SetToolProviderRefs(toolProviderRefs []map[string]any) {
	t.ToolProviderRefs = toolProviderRefs
	t.require(turnInputFieldToolProviderRefs)
}

func (t *TurnInput) UnmarshalJSON(data []byte) error {
	type unmarshaler TurnInput
	var body unmarshaler
	if err := json.Unmarshal(data, &body); err != nil {
		return err
	}
	*t = TurnInput(body)
	return nil
}

func (t *TurnInput) MarshalJSON() ([]byte, error) {
	type embed TurnInput
	var marshaler = struct {
		embed
	}{
		embed: embed(*t),
	}
	explicitMarshaler := internal.HandleExplicitFields(marshaler, t.explicitFields)
	return json.Marshal(explicitMarshaler)
}

var (
	branchInputFieldIdempotencyKey = big.NewInt(1 << 0)
	branchInputFieldSourceRunID    = big.NewInt(1 << 1)
)

type BranchInput struct {
	IdempotencyKey string `json:"idempotency_key" url:"-"`
	SourceRunID    string `json:"source_run_id" url:"-"`

	// Private bitmask of fields set to an explicit value and therefore not to be omitted
	explicitFields *big.Int `json:"-" url:"-"`
}

func (b *BranchInput) require(field *big.Int) {
	if b.explicitFields == nil {
		b.explicitFields = big.NewInt(0)
	}
	b.explicitFields.Or(b.explicitFields, field)
}

// SetIdempotencyKey sets the IdempotencyKey field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (b *BranchInput) SetIdempotencyKey(idempotencyKey string) {
	b.IdempotencyKey = idempotencyKey
	b.require(branchInputFieldIdempotencyKey)
}

// SetSourceRunID sets the SourceRunID field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (b *BranchInput) SetSourceRunID(sourceRunID string) {
	b.SourceRunID = sourceRunID
	b.require(branchInputFieldSourceRunID)
}

func (b *BranchInput) UnmarshalJSON(data []byte) error {
	type unmarshaler BranchInput
	var body unmarshaler
	if err := json.Unmarshal(data, &body); err != nil {
		return err
	}
	*b = BranchInput(body)
	return nil
}

func (b *BranchInput) MarshalJSON() ([]byte, error) {
	type embed BranchInput
	var marshaler = struct {
		embed
	}{
		embed: embed(*b),
	}
	explicitMarshaler := internal.HandleExplicitFields(marshaler, b.explicitFields)
	return json.Marshal(explicitMarshaler)
}

var (
	sessionInputFieldConversationID    = big.NewInt(1 << 0)
	sessionInputFieldFinalOutputSchema = big.NewInt(1 << 1)
	sessionInputFieldReasoningEffort   = big.NewInt(1 << 2)
	sessionInputFieldTenantID          = big.NewInt(1 << 3)
	sessionInputFieldUserID            = big.NewInt(1 << 4)
)

type SessionInput struct {
	ConversationID    *string                      `json:"conversation_id,omitempty" url:"-"`
	FinalOutputSchema map[string]any               `json:"final_output_schema,omitempty" url:"-"`
	ReasoningEffort   *SessionInputReasoningEffort `json:"reasoning_effort,omitempty" url:"-"`
	TenantID          string                       `json:"tenant_id" url:"-"`
	UserID            string                       `json:"user_id" url:"-"`

	// Private bitmask of fields set to an explicit value and therefore not to be omitted
	explicitFields *big.Int `json:"-" url:"-"`
}

func (s *SessionInput) require(field *big.Int) {
	if s.explicitFields == nil {
		s.explicitFields = big.NewInt(0)
	}
	s.explicitFields.Or(s.explicitFields, field)
}

// SetConversationID sets the ConversationID field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (s *SessionInput) SetConversationID(conversationID *string) {
	s.ConversationID = conversationID
	s.require(sessionInputFieldConversationID)
}

// SetFinalOutputSchema sets the FinalOutputSchema field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (s *SessionInput) SetFinalOutputSchema(finalOutputSchema map[string]any) {
	s.FinalOutputSchema = finalOutputSchema
	s.require(sessionInputFieldFinalOutputSchema)
}

// SetReasoningEffort sets the ReasoningEffort field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (s *SessionInput) SetReasoningEffort(reasoningEffort *SessionInputReasoningEffort) {
	s.ReasoningEffort = reasoningEffort
	s.require(sessionInputFieldReasoningEffort)
}

// SetTenantID sets the TenantID field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (s *SessionInput) SetTenantID(tenantID string) {
	s.TenantID = tenantID
	s.require(sessionInputFieldTenantID)
}

// SetUserID sets the UserID field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (s *SessionInput) SetUserID(userID string) {
	s.UserID = userID
	s.require(sessionInputFieldUserID)
}

func (s *SessionInput) UnmarshalJSON(data []byte) error {
	type unmarshaler SessionInput
	var body unmarshaler
	if err := json.Unmarshal(data, &body); err != nil {
		return err
	}
	*s = SessionInput(body)
	return nil
}

func (s *SessionInput) MarshalJSON() ([]byte, error) {
	type embed SessionInput
	var marshaler = struct {
		embed
	}{
		embed: embed(*s),
	}
	explicitMarshaler := internal.HandleExplicitFields(marshaler, s.explicitFields)
	return json.Marshal(explicitMarshaler)
}

var (
	listExecutionSessionsRequestFieldHarnessID = big.NewInt(1 << 0)
	listExecutionSessionsRequestFieldAfter     = big.NewInt(1 << 1)
	listExecutionSessionsRequestFieldLimit     = big.NewInt(1 << 2)
	listExecutionSessionsRequestFieldAgentSlug = big.NewInt(1 << 3)
)

type ListExecutionSessionsRequest struct {
	HarnessID *string `json:"-" url:"harness_id,omitempty"`
	After     *string `json:"-" url:"after,omitempty"`
	Limit     *int    `json:"-" url:"limit,omitempty"`
	AgentSlug *string `json:"-" url:"agent_slug,omitempty"`

	// Private bitmask of fields set to an explicit value and therefore not to be omitted
	explicitFields *big.Int `json:"-" url:"-"`
}

func (l *ListExecutionSessionsRequest) require(field *big.Int) {
	if l.explicitFields == nil {
		l.explicitFields = big.NewInt(0)
	}
	l.explicitFields.Or(l.explicitFields, field)
}

// SetHarnessID sets the HarnessID field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (l *ListExecutionSessionsRequest) SetHarnessID(harnessID *string) {
	l.HarnessID = harnessID
	l.require(listExecutionSessionsRequestFieldHarnessID)
}

// SetAfter sets the After field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (l *ListExecutionSessionsRequest) SetAfter(after *string) {
	l.After = after
	l.require(listExecutionSessionsRequestFieldAfter)
}

// SetLimit sets the Limit field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (l *ListExecutionSessionsRequest) SetLimit(limit *int) {
	l.Limit = limit
	l.require(listExecutionSessionsRequestFieldLimit)
}

// SetAgentSlug sets the AgentSlug field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (l *ListExecutionSessionsRequest) SetAgentSlug(agentSlug *string) {
	l.AgentSlug = agentSlug
	l.require(listExecutionSessionsRequestFieldAgentSlug)
}

type SessionInputReasoningEffort string

const (
	SessionInputReasoningEffortNone    SessionInputReasoningEffort = "none"
	SessionInputReasoningEffortMinimal SessionInputReasoningEffort = "minimal"
	SessionInputReasoningEffortLow     SessionInputReasoningEffort = "low"
	SessionInputReasoningEffortMedium  SessionInputReasoningEffort = "medium"
	SessionInputReasoningEffortHigh    SessionInputReasoningEffort = "high"
	SessionInputReasoningEffortXhigh   SessionInputReasoningEffort = "xhigh"
)

func NewSessionInputReasoningEffortFromString(s string) (SessionInputReasoningEffort, error) {
	switch s {
	case "none":
		return SessionInputReasoningEffortNone, nil
	case "minimal":
		return SessionInputReasoningEffortMinimal, nil
	case "low":
		return SessionInputReasoningEffortLow, nil
	case "medium":
		return SessionInputReasoningEffortMedium, nil
	case "high":
		return SessionInputReasoningEffortHigh, nil
	case "xhigh":
		return SessionInputReasoningEffortXhigh, nil
	}
	var t SessionInputReasoningEffort
	return "", fmt.Errorf("%s is not a valid %T", s, t)
}

func (s SessionInputReasoningEffort) Ptr() *SessionInputReasoningEffort {
	return &s
}

type TurnInputDeliveryMode string

const (
	TurnInputDeliveryModeSteer TurnInputDeliveryMode = "steer"
	TurnInputDeliveryModeQueue TurnInputDeliveryMode = "queue"
)

func NewTurnInputDeliveryModeFromString(s string) (TurnInputDeliveryMode, error) {
	switch s {
	case "steer":
		return TurnInputDeliveryModeSteer, nil
	case "queue":
		return TurnInputDeliveryModeQueue, nil
	}
	var t TurnInputDeliveryMode
	return "", fmt.Errorf("%s is not a valid %T", s, t)
}

func (t TurnInputDeliveryMode) Ptr() *TurnInputDeliveryMode {
	return &t
}

type TurnInputExecutionEnvironment string

const (
	TurnInputExecutionEnvironmentManaged TurnInputExecutionEnvironment = "managed"
	TurnInputExecutionEnvironmentLocal   TurnInputExecutionEnvironment = "local"
)

func NewTurnInputExecutionEnvironmentFromString(s string) (TurnInputExecutionEnvironment, error) {
	switch s {
	case "managed":
		return TurnInputExecutionEnvironmentManaged, nil
	case "local":
		return TurnInputExecutionEnvironmentLocal, nil
	}
	var t TurnInputExecutionEnvironment
	return "", fmt.Errorf("%s is not a valid %T", s, t)
}

func (t TurnInputExecutionEnvironment) Ptr() *TurnInputExecutionEnvironment {
	return &t
}

type TurnInputRunMode string

const (
	TurnInputRunModeInteractive        TurnInputRunMode = "interactive"
	TurnInputRunModeBackgroundSubagent TurnInputRunMode = "background_subagent"
	TurnInputRunModeSandboxExecution   TurnInputRunMode = "sandbox_execution"
)

func NewTurnInputRunModeFromString(s string) (TurnInputRunMode, error) {
	switch s {
	case "interactive":
		return TurnInputRunModeInteractive, nil
	case "background_subagent":
		return TurnInputRunModeBackgroundSubagent, nil
	case "sandbox_execution":
		return TurnInputRunModeSandboxExecution, nil
	}
	var t TurnInputRunMode
	return "", fmt.Errorf("%s is not a valid %T", s, t)
}

func (t TurnInputRunMode) Ptr() *TurnInputRunMode {
	return &t
}

var (
	uploadFileExecutionSessionsRequestFieldFilename = big.NewInt(1 << 0)
)

type UploadFileExecutionSessionsRequest struct {
	Filename string `json:"-" url:"filename"`
	Body     []byte `json:"-" url:"-"`

	// Private bitmask of fields set to an explicit value and therefore not to be omitted
	explicitFields *big.Int `json:"-" url:"-"`
}

func (u *UploadFileExecutionSessionsRequest) require(field *big.Int) {
	if u.explicitFields == nil {
		u.explicitFields = big.NewInt(0)
	}
	u.explicitFields.Or(u.explicitFields, field)
}

// SetFilename sets the Filename field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (u *UploadFileExecutionSessionsRequest) SetFilename(filename string) {
	u.Filename = filename
	u.require(uploadFileExecutionSessionsRequestFieldFilename)
}

func (u *UploadFileExecutionSessionsRequest) UnmarshalJSON(data []byte) error {
	type unmarshaler UploadFileExecutionSessionsRequest
	var body unmarshaler
	if err := json.Unmarshal(data, &body); err != nil {
		return err
	}
	*u = UploadFileExecutionSessionsRequest(body)
	return nil
}

func (u *UploadFileExecutionSessionsRequest) MarshalJSON() ([]byte, error) {
	type embed UploadFileExecutionSessionsRequest
	var marshaler = struct {
		embed
	}{
		embed: embed(*u),
	}
	explicitMarshaler := internal.HandleExplicitFields(marshaler, u.explicitFields)
	return json.Marshal(explicitMarshaler)
}
