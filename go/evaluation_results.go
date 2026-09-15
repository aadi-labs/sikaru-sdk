
package api

import (
	json "encoding/json"
	fmt "fmt"
	internal "github.com/aadi-labs/sikaru-sdk/go/internal"
	big "math/big"
)

var (
	listResultsEvaluationResultsRequestFieldEnvironment = big.NewInt(1 << 0)
	listResultsEvaluationResultsRequestFieldEvaluator   = big.NewInt(1 << 1)
	listResultsEvaluationResultsRequestFieldVerdict     = big.NewInt(1 << 2)
	listResultsEvaluationResultsRequestFieldLimit       = big.NewInt(1 << 3)
	listResultsEvaluationResultsRequestFieldCursor      = big.NewInt(1 << 4)
)

type ListResultsEvaluationResultsRequest struct {
	Environment *ListResultsEvaluationResultsRequestEnvironment `json:"-" url:"environment,omitempty"`
	Evaluator   *string                                         `json:"-" url:"evaluator,omitempty"`
	Verdict     *ListResultsEvaluationResultsRequestVerdict     `json:"-" url:"verdict,omitempty"`
	Limit       *int                                            `json:"-" url:"limit,omitempty"`
	Cursor      *string                                         `json:"-" url:"cursor,omitempty"`

	// Private bitmask of fields set to an explicit value and therefore not to be omitted
	explicitFields *big.Int `json:"-" url:"-"`
}

func (l *ListResultsEvaluationResultsRequest) require(field *big.Int) {
	if l.explicitFields == nil {
		l.explicitFields = big.NewInt(0)
	}
	l.explicitFields.Or(l.explicitFields, field)
}

// SetEnvironment sets the Environment field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (l *ListResultsEvaluationResultsRequest) SetEnvironment(environment *ListResultsEvaluationResultsRequestEnvironment) {
	l.Environment = environment
	l.require(listResultsEvaluationResultsRequestFieldEnvironment)
}

// SetEvaluator sets the Evaluator field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (l *ListResultsEvaluationResultsRequest) SetEvaluator(evaluator *string) {
	l.Evaluator = evaluator
	l.require(listResultsEvaluationResultsRequestFieldEvaluator)
}

// SetVerdict sets the Verdict field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (l *ListResultsEvaluationResultsRequest) SetVerdict(verdict *ListResultsEvaluationResultsRequestVerdict) {
	l.Verdict = verdict
	l.require(listResultsEvaluationResultsRequestFieldVerdict)
}

// SetLimit sets the Limit field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (l *ListResultsEvaluationResultsRequest) SetLimit(limit *int) {
	l.Limit = limit
	l.require(listResultsEvaluationResultsRequestFieldLimit)
}

// SetCursor sets the Cursor field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (l *ListResultsEvaluationResultsRequest) SetCursor(cursor *string) {
	l.Cursor = cursor
	l.require(listResultsEvaluationResultsRequestFieldCursor)
}

var (
	evaluationResultFieldAdjudicates  = big.NewInt(1 << 0)
	evaluationResultFieldContext      = big.NewInt(1 << 1)
	evaluationResultFieldEnvironment  = big.NewInt(1 << 2)
	evaluationResultFieldEvaluator    = big.NewInt(1 << 3)
	evaluationResultFieldID           = big.NewInt(1 << 4)
	evaluationResultFieldPublicReason = big.NewInt(1 << 5)
	evaluationResultFieldRevision     = big.NewInt(1 << 6)
	evaluationResultFieldSource       = big.NewInt(1 << 7)
	evaluationResultFieldTarget       = big.NewInt(1 << 8)
	evaluationResultFieldTraceID      = big.NewInt(1 << 9)
	evaluationResultFieldVerdict      = big.NewInt(1 << 10)
)

type EvaluationResult struct {
	Adjudicates  []string                    `json:"adjudicates,omitempty" url:"-"`
	Context      *JudgmentContext            `json:"context,omitempty" url:"-"`
	Environment  EvaluationResultEnvironment `json:"environment" url:"-"`
	Evaluator    string                      `json:"evaluator" url:"-"`
	ID           string                      `json:"id" url:"-"`
	PublicReason string                      `json:"publicReason" url:"-"`
	Revision     string                      `json:"revision" url:"-"`
	Source       EvaluationResultSource      `json:"source" url:"-"`
	Target       *JudgmentTarget             `json:"target,omitempty" url:"-"`
	TraceID      string                      `json:"traceId" url:"-"`
	Verdict      EvaluationResultVerdict     `json:"verdict" url:"-"`

	// Private bitmask of fields set to an explicit value and therefore not to be omitted
	explicitFields *big.Int `json:"-" url:"-"`
}

func (e *EvaluationResult) require(field *big.Int) {
	if e.explicitFields == nil {
		e.explicitFields = big.NewInt(0)
	}
	e.explicitFields.Or(e.explicitFields, field)
}

// SetAdjudicates sets the Adjudicates field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (e *EvaluationResult) SetAdjudicates(adjudicates []string) {
	e.Adjudicates = adjudicates
	e.require(evaluationResultFieldAdjudicates)
}

// SetContext sets the Context field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (e *EvaluationResult) SetContext(context *JudgmentContext) {
	e.Context = context
	e.require(evaluationResultFieldContext)
}

// SetEnvironment sets the Environment field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (e *EvaluationResult) SetEnvironment(environment EvaluationResultEnvironment) {
	e.Environment = environment
	e.require(evaluationResultFieldEnvironment)
}

// SetEvaluator sets the Evaluator field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (e *EvaluationResult) SetEvaluator(evaluator string) {
	e.Evaluator = evaluator
	e.require(evaluationResultFieldEvaluator)
}

// SetID sets the ID field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (e *EvaluationResult) SetID(id string) {
	e.ID = id
	e.require(evaluationResultFieldID)
}

// SetPublicReason sets the PublicReason field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (e *EvaluationResult) SetPublicReason(publicReason string) {
	e.PublicReason = publicReason
	e.require(evaluationResultFieldPublicReason)
}

// SetRevision sets the Revision field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (e *EvaluationResult) SetRevision(revision string) {
	e.Revision = revision
	e.require(evaluationResultFieldRevision)
}

// SetSource sets the Source field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (e *EvaluationResult) SetSource(source EvaluationResultSource) {
	e.Source = source
	e.require(evaluationResultFieldSource)
}

// SetTarget sets the Target field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (e *EvaluationResult) SetTarget(target *JudgmentTarget) {
	e.Target = target
	e.require(evaluationResultFieldTarget)
}

// SetTraceID sets the TraceID field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (e *EvaluationResult) SetTraceID(traceID string) {
	e.TraceID = traceID
	e.require(evaluationResultFieldTraceID)
}

// SetVerdict sets the Verdict field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (e *EvaluationResult) SetVerdict(verdict EvaluationResultVerdict) {
	e.Verdict = verdict
	e.require(evaluationResultFieldVerdict)
}

func (e *EvaluationResult) UnmarshalJSON(data []byte) error {
	type unmarshaler EvaluationResult
	var body unmarshaler
	if err := json.Unmarshal(data, &body); err != nil {
		return err
	}
	*e = EvaluationResult(body)
	return nil
}

func (e *EvaluationResult) MarshalJSON() ([]byte, error) {
	type embed EvaluationResult
	var marshaler = struct {
		embed
	}{
		embed: embed(*e),
	}
	explicitMarshaler := internal.HandleExplicitFields(marshaler, e.explicitFields)
	return json.Marshal(explicitMarshaler)
}

var (
	judgmentContextFieldContent = big.NewInt(1 << 0)
	judgmentContextFieldSha256  = big.NewInt(1 << 1)
)

type JudgmentContext struct {
	Content string `json:"content" url:"content"`
	Sha256  string `json:"sha256" url:"sha256"`

	// Private bitmask of fields set to an explicit value and therefore not to be omitted
	explicitFields *big.Int `json:"-" url:"-"`

	extraProperties map[string]interface{}
	rawJSON         json.RawMessage
}

func (j *JudgmentContext) GetContent() string {
	if j == nil {
		return ""
	}
	return j.Content
}

func (j *JudgmentContext) GetSha256() string {
	if j == nil {
		return ""
	}
	return j.Sha256
}

func (j *JudgmentContext) GetExtraProperties() map[string]interface{} {
	if j == nil {
		return nil
	}
	return j.extraProperties
}

func (j *JudgmentContext) require(field *big.Int) {
	if j.explicitFields == nil {
		j.explicitFields = big.NewInt(0)
	}
	j.explicitFields.Or(j.explicitFields, field)
}

// SetContent sets the Content field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (j *JudgmentContext) SetContent(content string) {
	j.Content = content
	j.require(judgmentContextFieldContent)
}

// SetSha256 sets the Sha256 field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (j *JudgmentContext) SetSha256(sha256 string) {
	j.Sha256 = sha256
	j.require(judgmentContextFieldSha256)
}

func (j *JudgmentContext) UnmarshalJSON(data []byte) error {
	type unmarshaler JudgmentContext
	var value unmarshaler
	if err := json.Unmarshal(data, &value); err != nil {
		return err
	}
	*j = JudgmentContext(value)
	extraProperties, err := internal.ExtractExtraProperties(data, *j)
	if err != nil {
		return err
	}
	j.extraProperties = extraProperties
	j.rawJSON = json.RawMessage(data)
	return nil
}

func (j *JudgmentContext) MarshalJSON() ([]byte, error) {
	type embed JudgmentContext
	var marshaler = struct {
		embed
	}{
		embed: embed(*j),
	}
	explicitMarshaler := internal.HandleExplicitFields(marshaler, j.explicitFields)
	return json.Marshal(explicitMarshaler)
}

func (j *JudgmentContext) String() string {
	if j == nil {
		return "<nil>"
	}
	if len(j.rawJSON) > 0 {
		if value, err := internal.StringifyJSON(j.rawJSON); err == nil {
			return value
		}
	}
	if value, err := internal.StringifyJSON(j); err == nil {
		return value
	}
	return fmt.Sprintf("%#v", j)
}

type EvaluationResultEnvironment string

const (
	EvaluationResultEnvironmentProduction  EvaluationResultEnvironment = "production"
	EvaluationResultEnvironmentStaging     EvaluationResultEnvironment = "staging"
	EvaluationResultEnvironmentDevelopment EvaluationResultEnvironment = "development"
)

func NewEvaluationResultEnvironmentFromString(s string) (EvaluationResultEnvironment, error) {
	switch s {
	case "production":
		return EvaluationResultEnvironmentProduction, nil
	case "staging":
		return EvaluationResultEnvironmentStaging, nil
	case "development":
		return EvaluationResultEnvironmentDevelopment, nil
	}
	var t EvaluationResultEnvironment
	return "", fmt.Errorf("%s is not a valid %T", s, t)
}

func (e EvaluationResultEnvironment) Ptr() *EvaluationResultEnvironment {
	return &e
}

type EvaluationResultSource string

const (
	EvaluationResultSourceHuman     EvaluationResultSource = "human"
	EvaluationResultSourceAutomated EvaluationResultSource = "automated"
)

func NewEvaluationResultSourceFromString(s string) (EvaluationResultSource, error) {
	switch s {
	case "human":
		return EvaluationResultSourceHuman, nil
	case "automated":
		return EvaluationResultSourceAutomated, nil
	}
	var t EvaluationResultSource
	return "", fmt.Errorf("%s is not a valid %T", s, t)
}

func (e EvaluationResultSource) Ptr() *EvaluationResultSource {
	return &e
}

type EvaluationResultVerdict string

const (
	EvaluationResultVerdictPass          EvaluationResultVerdict = "pass"
	EvaluationResultVerdictFail          EvaluationResultVerdict = "fail"
	EvaluationResultVerdictUnableToJudge EvaluationResultVerdict = "unable_to_judge"
	EvaluationResultVerdictError         EvaluationResultVerdict = "error"
)

func NewEvaluationResultVerdictFromString(s string) (EvaluationResultVerdict, error) {
	switch s {
	case "pass":
		return EvaluationResultVerdictPass, nil
	case "fail":
		return EvaluationResultVerdictFail, nil
	case "unable_to_judge":
		return EvaluationResultVerdictUnableToJudge, nil
	case "error":
		return EvaluationResultVerdictError, nil
	}
	var t EvaluationResultVerdict
	return "", fmt.Errorf("%s is not a valid %T", s, t)
}

func (e EvaluationResultVerdict) Ptr() *EvaluationResultVerdict {
	return &e
}

type ListResultsEvaluationResultsRequestEnvironment string

const (
	ListResultsEvaluationResultsRequestEnvironmentProduction  ListResultsEvaluationResultsRequestEnvironment = "production"
	ListResultsEvaluationResultsRequestEnvironmentStaging     ListResultsEvaluationResultsRequestEnvironment = "staging"
	ListResultsEvaluationResultsRequestEnvironmentDevelopment ListResultsEvaluationResultsRequestEnvironment = "development"
)

func NewListResultsEvaluationResultsRequestEnvironmentFromString(s string) (ListResultsEvaluationResultsRequestEnvironment, error) {
	switch s {
	case "production":
		return ListResultsEvaluationResultsRequestEnvironmentProduction, nil
	case "staging":
		return ListResultsEvaluationResultsRequestEnvironmentStaging, nil
	case "development":
		return ListResultsEvaluationResultsRequestEnvironmentDevelopment, nil
	}
	var t ListResultsEvaluationResultsRequestEnvironment
	return "", fmt.Errorf("%s is not a valid %T", s, t)
}

func (l ListResultsEvaluationResultsRequestEnvironment) Ptr() *ListResultsEvaluationResultsRequestEnvironment {
	return &l
}

type ListResultsEvaluationResultsRequestVerdict string

const (
	ListResultsEvaluationResultsRequestVerdictPass          ListResultsEvaluationResultsRequestVerdict = "pass"
	ListResultsEvaluationResultsRequestVerdictFail          ListResultsEvaluationResultsRequestVerdict = "fail"
	ListResultsEvaluationResultsRequestVerdictUnableToJudge ListResultsEvaluationResultsRequestVerdict = "unable_to_judge"
	ListResultsEvaluationResultsRequestVerdictError         ListResultsEvaluationResultsRequestVerdict = "error"
)

func NewListResultsEvaluationResultsRequestVerdictFromString(s string) (ListResultsEvaluationResultsRequestVerdict, error) {
	switch s {
	case "pass":
		return ListResultsEvaluationResultsRequestVerdictPass, nil
	case "fail":
		return ListResultsEvaluationResultsRequestVerdictFail, nil
	case "unable_to_judge":
		return ListResultsEvaluationResultsRequestVerdictUnableToJudge, nil
	case "error":
		return ListResultsEvaluationResultsRequestVerdictError, nil
	}
	var t ListResultsEvaluationResultsRequestVerdict
	return "", fmt.Errorf("%s is not a valid %T", s, t)
}

func (l ListResultsEvaluationResultsRequestVerdict) Ptr() *ListResultsEvaluationResultsRequestVerdict {
	return &l
}
