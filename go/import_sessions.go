
package api

import (
	json "encoding/json"
	fmt "fmt"
	internal "github.com/aadi-labs/sikaru-sdk/go/internal"
	big "math/big"
)

var (
	createCompatibilityProfileRequestFieldApprovalMap          = big.NewInt(1 << 0)
	createCompatibilityProfileRequestFieldDisplayName          = big.NewInt(1 << 1)
	createCompatibilityProfileRequestFieldEvalMap              = big.NewInt(1 << 2)
	createCompatibilityProfileRequestFieldHarnessID            = big.NewInt(1 << 3)
	createCompatibilityProfileRequestFieldInputSchema          = big.NewInt(1 << 4)
	createCompatibilityProfileRequestFieldMemoryMap            = big.NewInt(1 << 5)
	createCompatibilityProfileRequestFieldOutputSchema         = big.NewInt(1 << 6)
	createCompatibilityProfileRequestFieldRunModes             = big.NewInt(1 << 7)
	createCompatibilityProfileRequestFieldToolMap              = big.NewInt(1 << 8)
	createCompatibilityProfileRequestFieldTraceCoverageSummary = big.NewInt(1 << 9)
)

type CreateCompatibilityProfileRequest struct {
	ApprovalMap          map[string]any `json:"approvalMap,omitempty" url:"-"`
	DisplayName          string         `json:"displayName" url:"-"`
	EvalMap              map[string]any `json:"evalMap,omitempty" url:"-"`
	HarnessID            string         `json:"harnessId" url:"-"`
	InputSchema          map[string]any `json:"inputSchema,omitempty" url:"-"`
	MemoryMap            map[string]any `json:"memoryMap,omitempty" url:"-"`
	OutputSchema         map[string]any `json:"outputSchema,omitempty" url:"-"`
	RunModes             []string       `json:"runModes,omitempty" url:"-"`
	ToolMap              map[string]any `json:"toolMap,omitempty" url:"-"`
	TraceCoverageSummary map[string]any `json:"traceCoverageSummary,omitempty" url:"-"`

	// Private bitmask of fields set to an explicit value and therefore not to be omitted
	explicitFields *big.Int `json:"-" url:"-"`
}

func (c *CreateCompatibilityProfileRequest) require(field *big.Int) {
	if c.explicitFields == nil {
		c.explicitFields = big.NewInt(0)
	}
	c.explicitFields.Or(c.explicitFields, field)
}

// SetApprovalMap sets the ApprovalMap field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (c *CreateCompatibilityProfileRequest) SetApprovalMap(approvalMap map[string]any) {
	c.ApprovalMap = approvalMap
	c.require(createCompatibilityProfileRequestFieldApprovalMap)
}

// SetDisplayName sets the DisplayName field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (c *CreateCompatibilityProfileRequest) SetDisplayName(displayName string) {
	c.DisplayName = displayName
	c.require(createCompatibilityProfileRequestFieldDisplayName)
}

// SetEvalMap sets the EvalMap field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (c *CreateCompatibilityProfileRequest) SetEvalMap(evalMap map[string]any) {
	c.EvalMap = evalMap
	c.require(createCompatibilityProfileRequestFieldEvalMap)
}

// SetHarnessID sets the HarnessID field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (c *CreateCompatibilityProfileRequest) SetHarnessID(harnessID string) {
	c.HarnessID = harnessID
	c.require(createCompatibilityProfileRequestFieldHarnessID)
}

// SetInputSchema sets the InputSchema field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (c *CreateCompatibilityProfileRequest) SetInputSchema(inputSchema map[string]any) {
	c.InputSchema = inputSchema
	c.require(createCompatibilityProfileRequestFieldInputSchema)
}

// SetMemoryMap sets the MemoryMap field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (c *CreateCompatibilityProfileRequest) SetMemoryMap(memoryMap map[string]any) {
	c.MemoryMap = memoryMap
	c.require(createCompatibilityProfileRequestFieldMemoryMap)
}

// SetOutputSchema sets the OutputSchema field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (c *CreateCompatibilityProfileRequest) SetOutputSchema(outputSchema map[string]any) {
	c.OutputSchema = outputSchema
	c.require(createCompatibilityProfileRequestFieldOutputSchema)
}

// SetRunModes sets the RunModes field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (c *CreateCompatibilityProfileRequest) SetRunModes(runModes []string) {
	c.RunModes = runModes
	c.require(createCompatibilityProfileRequestFieldRunModes)
}

// SetToolMap sets the ToolMap field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (c *CreateCompatibilityProfileRequest) SetToolMap(toolMap map[string]any) {
	c.ToolMap = toolMap
	c.require(createCompatibilityProfileRequestFieldToolMap)
}

// SetTraceCoverageSummary sets the TraceCoverageSummary field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (c *CreateCompatibilityProfileRequest) SetTraceCoverageSummary(traceCoverageSummary map[string]any) {
	c.TraceCoverageSummary = traceCoverageSummary
	c.require(createCompatibilityProfileRequestFieldTraceCoverageSummary)
}

func (c *CreateCompatibilityProfileRequest) UnmarshalJSON(data []byte) error {
	type unmarshaler CreateCompatibilityProfileRequest
	var body unmarshaler
	if err := json.Unmarshal(data, &body); err != nil {
		return err
	}
	*c = CreateCompatibilityProfileRequest(body)
	return nil
}

func (c *CreateCompatibilityProfileRequest) MarshalJSON() ([]byte, error) {
	type embed CreateCompatibilityProfileRequest
	var marshaler = struct {
		embed
	}{
		embed: embed(*c),
	}
	explicitMarshaler := internal.HandleExplicitFields(marshaler, c.explicitFields)
	return json.Marshal(explicitMarshaler)
}

var (
	createImportSessionRequestFieldDisplayName = big.NewInt(1 << 0)
	createImportSessionRequestFieldMode        = big.NewInt(1 << 1)
)

type CreateImportSessionRequest struct {
	DisplayName string                         `json:"displayName" url:"-"`
	Mode        CreateImportSessionRequestMode `json:"mode" url:"-"`

	// Private bitmask of fields set to an explicit value and therefore not to be omitted
	explicitFields *big.Int `json:"-" url:"-"`
}

func (c *CreateImportSessionRequest) require(field *big.Int) {
	if c.explicitFields == nil {
		c.explicitFields = big.NewInt(0)
	}
	c.explicitFields.Or(c.explicitFields, field)
}

// SetDisplayName sets the DisplayName field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (c *CreateImportSessionRequest) SetDisplayName(displayName string) {
	c.DisplayName = displayName
	c.require(createImportSessionRequestFieldDisplayName)
}

// SetMode sets the Mode field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (c *CreateImportSessionRequest) SetMode(mode CreateImportSessionRequestMode) {
	c.Mode = mode
	c.require(createImportSessionRequestFieldMode)
}

func (c *CreateImportSessionRequest) UnmarshalJSON(data []byte) error {
	type unmarshaler CreateImportSessionRequest
	var body unmarshaler
	if err := json.Unmarshal(data, &body); err != nil {
		return err
	}
	*c = CreateImportSessionRequest(body)
	return nil
}

func (c *CreateImportSessionRequest) MarshalJSON() ([]byte, error) {
	type embed CreateImportSessionRequest
	var marshaler = struct {
		embed
	}{
		embed: embed(*c),
	}
	explicitMarshaler := internal.HandleExplicitFields(marshaler, c.explicitFields)
	return json.Marshal(explicitMarshaler)
}

var (
	createSourceArtifactRequestFieldAnalysisSummary = big.NewInt(1 << 0)
	createSourceArtifactRequestFieldContentDigest   = big.NewInt(1 << 1)
	createSourceArtifactRequestFieldExportPolicy    = big.NewInt(1 << 2)
	createSourceArtifactRequestFieldSourceKind      = big.NewInt(1 << 3)
	createSourceArtifactRequestFieldStorageRef      = big.NewInt(1 << 4)
)

type CreateSourceArtifactRequest struct {
	AnalysisSummary map[string]any                          `json:"analysisSummary,omitempty" url:"-"`
	ContentDigest   string                                  `json:"contentDigest" url:"-"`
	ExportPolicy    CreateSourceArtifactRequestExportPolicy `json:"exportPolicy" url:"-"`
	SourceKind      CreateSourceArtifactRequestSourceKind   `json:"sourceKind" url:"-"`
	StorageRef      string                                  `json:"storageRef" url:"-"`

	// Private bitmask of fields set to an explicit value and therefore not to be omitted
	explicitFields *big.Int `json:"-" url:"-"`
}

func (c *CreateSourceArtifactRequest) require(field *big.Int) {
	if c.explicitFields == nil {
		c.explicitFields = big.NewInt(0)
	}
	c.explicitFields.Or(c.explicitFields, field)
}

// SetAnalysisSummary sets the AnalysisSummary field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (c *CreateSourceArtifactRequest) SetAnalysisSummary(analysisSummary map[string]any) {
	c.AnalysisSummary = analysisSummary
	c.require(createSourceArtifactRequestFieldAnalysisSummary)
}

// SetContentDigest sets the ContentDigest field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (c *CreateSourceArtifactRequest) SetContentDigest(contentDigest string) {
	c.ContentDigest = contentDigest
	c.require(createSourceArtifactRequestFieldContentDigest)
}

// SetExportPolicy sets the ExportPolicy field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (c *CreateSourceArtifactRequest) SetExportPolicy(exportPolicy CreateSourceArtifactRequestExportPolicy) {
	c.ExportPolicy = exportPolicy
	c.require(createSourceArtifactRequestFieldExportPolicy)
}

// SetSourceKind sets the SourceKind field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (c *CreateSourceArtifactRequest) SetSourceKind(sourceKind CreateSourceArtifactRequestSourceKind) {
	c.SourceKind = sourceKind
	c.require(createSourceArtifactRequestFieldSourceKind)
}

// SetStorageRef sets the StorageRef field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (c *CreateSourceArtifactRequest) SetStorageRef(storageRef string) {
	c.StorageRef = storageRef
	c.require(createSourceArtifactRequestFieldStorageRef)
}

func (c *CreateSourceArtifactRequest) UnmarshalJSON(data []byte) error {
	type unmarshaler CreateSourceArtifactRequest
	var body unmarshaler
	if err := json.Unmarshal(data, &body); err != nil {
		return err
	}
	*c = CreateSourceArtifactRequest(body)
	return nil
}

func (c *CreateSourceArtifactRequest) MarshalJSON() ([]byte, error) {
	type embed CreateSourceArtifactRequest
	var marshaler = struct {
		embed
	}{
		embed: embed(*c),
	}
	explicitMarshaler := internal.HandleExplicitFields(marshaler, c.explicitFields)
	return json.Marshal(explicitMarshaler)
}

var (
	promoteImportSessionRequestFieldActiveHarnessVersionID = big.NewInt(1 << 0)
	promoteImportSessionRequestFieldAgentSlug              = big.NewInt(1 << 1)
	promoteImportSessionRequestFieldCompatibilityProfileID = big.NewInt(1 << 2)
	promoteImportSessionRequestFieldDisplayName            = big.NewInt(1 << 3)
	promoteImportSessionRequestFieldHarnessID              = big.NewInt(1 << 4)
)

type PromoteImportSessionRequest struct {
	ActiveHarnessVersionID string `json:"activeHarnessVersionId" url:"-"`
	AgentSlug              string `json:"agentSlug" url:"-"`
	CompatibilityProfileID string `json:"compatibilityProfileId" url:"-"`
	DisplayName            string `json:"displayName" url:"-"`
	HarnessID              string `json:"harnessId" url:"-"`

	// Private bitmask of fields set to an explicit value and therefore not to be omitted
	explicitFields *big.Int `json:"-" url:"-"`
}

func (p *PromoteImportSessionRequest) require(field *big.Int) {
	if p.explicitFields == nil {
		p.explicitFields = big.NewInt(0)
	}
	p.explicitFields.Or(p.explicitFields, field)
}

// SetActiveHarnessVersionID sets the ActiveHarnessVersionID field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (p *PromoteImportSessionRequest) SetActiveHarnessVersionID(activeHarnessVersionID string) {
	p.ActiveHarnessVersionID = activeHarnessVersionID
	p.require(promoteImportSessionRequestFieldActiveHarnessVersionID)
}

// SetAgentSlug sets the AgentSlug field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (p *PromoteImportSessionRequest) SetAgentSlug(agentSlug string) {
	p.AgentSlug = agentSlug
	p.require(promoteImportSessionRequestFieldAgentSlug)
}

// SetCompatibilityProfileID sets the CompatibilityProfileID field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (p *PromoteImportSessionRequest) SetCompatibilityProfileID(compatibilityProfileID string) {
	p.CompatibilityProfileID = compatibilityProfileID
	p.require(promoteImportSessionRequestFieldCompatibilityProfileID)
}

// SetDisplayName sets the DisplayName field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (p *PromoteImportSessionRequest) SetDisplayName(displayName string) {
	p.DisplayName = displayName
	p.require(promoteImportSessionRequestFieldDisplayName)
}

// SetHarnessID sets the HarnessID field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (p *PromoteImportSessionRequest) SetHarnessID(harnessID string) {
	p.HarnessID = harnessID
	p.require(promoteImportSessionRequestFieldHarnessID)
}

func (p *PromoteImportSessionRequest) UnmarshalJSON(data []byte) error {
	type unmarshaler PromoteImportSessionRequest
	var body unmarshaler
	if err := json.Unmarshal(data, &body); err != nil {
		return err
	}
	*p = PromoteImportSessionRequest(body)
	return nil
}

func (p *PromoteImportSessionRequest) MarshalJSON() ([]byte, error) {
	type embed PromoteImportSessionRequest
	var marshaler = struct {
		embed
	}{
		embed: embed(*p),
	}
	explicitMarshaler := internal.HandleExplicitFields(marshaler, p.explicitFields)
	return json.Marshal(explicitMarshaler)
}

var (
	createParityRunRequestFieldCompatibilityProfileID = big.NewInt(1 << 0)
	createParityRunRequestFieldSamples                = big.NewInt(1 << 1)
)

type CreateParityRunRequest struct {
	CompatibilityProfileID string           `json:"compatibilityProfileId" url:"compatibilityProfileId"`
	Samples                []map[string]any `json:"samples,omitempty" url:"samples,omitempty"`

	// Private bitmask of fields set to an explicit value and therefore not to be omitted
	explicitFields *big.Int `json:"-" url:"-"`

	extraProperties map[string]interface{}
	rawJSON         json.RawMessage
}

func (c *CreateParityRunRequest) GetCompatibilityProfileID() string {
	if c == nil {
		return ""
	}
	return c.CompatibilityProfileID
}

func (c *CreateParityRunRequest) GetSamples() []map[string]any {
	if c == nil {
		return nil
	}
	return c.Samples
}

func (c *CreateParityRunRequest) GetExtraProperties() map[string]interface{} {
	if c == nil {
		return nil
	}
	return c.extraProperties
}

func (c *CreateParityRunRequest) require(field *big.Int) {
	if c.explicitFields == nil {
		c.explicitFields = big.NewInt(0)
	}
	c.explicitFields.Or(c.explicitFields, field)
}

// SetCompatibilityProfileID sets the CompatibilityProfileID field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (c *CreateParityRunRequest) SetCompatibilityProfileID(compatibilityProfileID string) {
	c.CompatibilityProfileID = compatibilityProfileID
	c.require(createParityRunRequestFieldCompatibilityProfileID)
}

// SetSamples sets the Samples field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (c *CreateParityRunRequest) SetSamples(samples []map[string]any) {
	c.Samples = samples
	c.require(createParityRunRequestFieldSamples)
}

func (c *CreateParityRunRequest) UnmarshalJSON(data []byte) error {
	type unmarshaler CreateParityRunRequest
	var value unmarshaler
	if err := json.Unmarshal(data, &value); err != nil {
		return err
	}
	*c = CreateParityRunRequest(value)
	extraProperties, err := internal.ExtractExtraProperties(data, *c)
	if err != nil {
		return err
	}
	c.extraProperties = extraProperties
	c.rawJSON = json.RawMessage(data)
	return nil
}

func (c *CreateParityRunRequest) MarshalJSON() ([]byte, error) {
	type embed CreateParityRunRequest
	var marshaler = struct {
		embed
	}{
		embed: embed(*c),
	}
	explicitMarshaler := internal.HandleExplicitFields(marshaler, c.explicitFields)
	return json.Marshal(explicitMarshaler)
}

func (c *CreateParityRunRequest) String() string {
	if c == nil {
		return "<nil>"
	}
	if len(c.rawJSON) > 0 {
		if value, err := internal.StringifyJSON(c.rawJSON); err == nil {
			return value
		}
	}
	if value, err := internal.StringifyJSON(c); err == nil {
		return value
	}
	return fmt.Sprintf("%#v", c)
}

type CreateImportSessionRequestMode string

const (
	CreateImportSessionRequestModeWorkflow  CreateImportSessionRequestMode = "workflow"
	CreateImportSessionRequestModeHarness   CreateImportSessionRequestMode = "harness"
	CreateImportSessionRequestModeTraceOnly CreateImportSessionRequestMode = "trace_only"
)

func NewCreateImportSessionRequestModeFromString(s string) (CreateImportSessionRequestMode, error) {
	switch s {
	case "workflow":
		return CreateImportSessionRequestModeWorkflow, nil
	case "harness":
		return CreateImportSessionRequestModeHarness, nil
	case "trace_only":
		return CreateImportSessionRequestModeTraceOnly, nil
	}
	var t CreateImportSessionRequestMode
	return "", fmt.Errorf("%s is not a valid %T", s, t)
}

func (c CreateImportSessionRequestMode) Ptr() *CreateImportSessionRequestMode {
	return &c
}

type CreateSourceArtifactRequestExportPolicy string

const (
	CreateSourceArtifactRequestExportPolicyCustomerSourceExportable CreateSourceArtifactRequestExportPolicy = "customer_source_exportable"
	CreateSourceArtifactRequestExportPolicyCustomerSourcePrivate    CreateSourceArtifactRequestExportPolicy = "customer_source_private"
	CreateSourceArtifactRequestExportPolicyReferenceOnly            CreateSourceArtifactRequestExportPolicy = "reference_only"
)

func NewCreateSourceArtifactRequestExportPolicyFromString(s string) (CreateSourceArtifactRequestExportPolicy, error) {
	switch s {
	case "customer_source_exportable":
		return CreateSourceArtifactRequestExportPolicyCustomerSourceExportable, nil
	case "customer_source_private":
		return CreateSourceArtifactRequestExportPolicyCustomerSourcePrivate, nil
	case "reference_only":
		return CreateSourceArtifactRequestExportPolicyReferenceOnly, nil
	}
	var t CreateSourceArtifactRequestExportPolicy
	return "", fmt.Errorf("%s is not a valid %T", s, t)
}

func (c CreateSourceArtifactRequestExportPolicy) Ptr() *CreateSourceArtifactRequestExportPolicy {
	return &c
}

type CreateSourceArtifactRequestSourceKind string

const (
	CreateSourceArtifactRequestSourceKindWorkflowJSON    CreateSourceArtifactRequestSourceKind = "workflow_json"
	CreateSourceArtifactRequestSourceKindLanggraph       CreateSourceArtifactRequestSourceKind = "langgraph"
	CreateSourceArtifactRequestSourceKindN8NJSON         CreateSourceArtifactRequestSourceKind = "n8n_json"
	CreateSourceArtifactRequestSourceKindYamlDag         CreateSourceArtifactRequestSourceKind = "yaml_dag"
	CreateSourceArtifactRequestSourceKindSourceBundle    CreateSourceArtifactRequestSourceKind = "source_bundle"
	CreateSourceArtifactRequestSourceKindRepoRef         CreateSourceArtifactRequestSourceKind = "repo_ref"
	CreateSourceArtifactRequestSourceKindContainerRef    CreateSourceArtifactRequestSourceKind = "container_ref"
	CreateSourceArtifactRequestSourceKindAdapterEndpoint CreateSourceArtifactRequestSourceKind = "adapter_endpoint"
	CreateSourceArtifactRequestSourceKindPromptBundle    CreateSourceArtifactRequestSourceKind = "prompt_bundle"
	CreateSourceArtifactRequestSourceKindSkillTree       CreateSourceArtifactRequestSourceKind = "skill_tree"
	CreateSourceArtifactRequestSourceKindMemoryProfile   CreateSourceArtifactRequestSourceKind = "memory_profile"
	CreateSourceArtifactRequestSourceKindEvalSuite       CreateSourceArtifactRequestSourceKind = "eval_suite"
	CreateSourceArtifactRequestSourceKindTraceBundle     CreateSourceArtifactRequestSourceKind = "trace_bundle"
	CreateSourceArtifactRequestSourceKindNaturalLanguage CreateSourceArtifactRequestSourceKind = "natural_language"
)

func NewCreateSourceArtifactRequestSourceKindFromString(s string) (CreateSourceArtifactRequestSourceKind, error) {
	switch s {
	case "workflow_json":
		return CreateSourceArtifactRequestSourceKindWorkflowJSON, nil
	case "langgraph":
		return CreateSourceArtifactRequestSourceKindLanggraph, nil
	case "n8n_json":
		return CreateSourceArtifactRequestSourceKindN8NJSON, nil
	case "yaml_dag":
		return CreateSourceArtifactRequestSourceKindYamlDag, nil
	case "source_bundle":
		return CreateSourceArtifactRequestSourceKindSourceBundle, nil
	case "repo_ref":
		return CreateSourceArtifactRequestSourceKindRepoRef, nil
	case "container_ref":
		return CreateSourceArtifactRequestSourceKindContainerRef, nil
	case "adapter_endpoint":
		return CreateSourceArtifactRequestSourceKindAdapterEndpoint, nil
	case "prompt_bundle":
		return CreateSourceArtifactRequestSourceKindPromptBundle, nil
	case "skill_tree":
		return CreateSourceArtifactRequestSourceKindSkillTree, nil
	case "memory_profile":
		return CreateSourceArtifactRequestSourceKindMemoryProfile, nil
	case "eval_suite":
		return CreateSourceArtifactRequestSourceKindEvalSuite, nil
	case "trace_bundle":
		return CreateSourceArtifactRequestSourceKindTraceBundle, nil
	case "natural_language":
		return CreateSourceArtifactRequestSourceKindNaturalLanguage, nil
	}
	var t CreateSourceArtifactRequestSourceKind
	return "", fmt.Errorf("%s is not a valid %T", s, t)
}

func (c CreateSourceArtifactRequestSourceKind) Ptr() *CreateSourceArtifactRequestSourceKind {
	return &c
}
