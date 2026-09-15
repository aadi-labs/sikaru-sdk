
package api

import (
	json "encoding/json"
	fmt "fmt"
	internal "github.com/aadi-labs/sikaru-sdk/go/internal"
	big "math/big"
)

var (
	comparisonInputFieldCases     = big.NewInt(1 << 0)
	comparisonInputFieldEvaluator = big.NewInt(1 << 1)
	comparisonInputFieldID        = big.NewInt(1 << 2)
	comparisonInputFieldRevision  = big.NewInt(1 << 3)
	comparisonInputFieldRubric    = big.NewInt(1 << 4)
)

type ComparisonInput struct {
	Cases     []*CaseInput `json:"cases" url:"-"`
	Evaluator string       `json:"evaluator" url:"-"`
	ID        string       `json:"id" url:"-"`
	Revision  string       `json:"revision" url:"-"`
	Rubric    string       `json:"rubric" url:"-"`

	// Private bitmask of fields set to an explicit value and therefore not to be omitted
	explicitFields *big.Int `json:"-" url:"-"`
}

func (c *ComparisonInput) require(field *big.Int) {
	if c.explicitFields == nil {
		c.explicitFields = big.NewInt(0)
	}
	c.explicitFields.Or(c.explicitFields, field)
}

// SetCases sets the Cases field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (c *ComparisonInput) SetCases(cases []*CaseInput) {
	c.Cases = cases
	c.require(comparisonInputFieldCases)
}

// SetEvaluator sets the Evaluator field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (c *ComparisonInput) SetEvaluator(evaluator string) {
	c.Evaluator = evaluator
	c.require(comparisonInputFieldEvaluator)
}

// SetID sets the ID field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (c *ComparisonInput) SetID(id string) {
	c.ID = id
	c.require(comparisonInputFieldID)
}

// SetRevision sets the Revision field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (c *ComparisonInput) SetRevision(revision string) {
	c.Revision = revision
	c.require(comparisonInputFieldRevision)
}

// SetRubric sets the Rubric field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (c *ComparisonInput) SetRubric(rubric string) {
	c.Rubric = rubric
	c.require(comparisonInputFieldRubric)
}

func (c *ComparisonInput) UnmarshalJSON(data []byte) error {
	type unmarshaler ComparisonInput
	var body unmarshaler
	if err := json.Unmarshal(data, &body); err != nil {
		return err
	}
	*c = ComparisonInput(body)
	return nil
}

func (c *ComparisonInput) MarshalJSON() ([]byte, error) {
	type embed ComparisonInput
	var marshaler = struct {
		embed
	}{
		embed: embed(*c),
	}
	explicitMarshaler := internal.HandleExplicitFields(marshaler, c.explicitFields)
	return json.Marshal(explicitMarshaler)
}

var (
	listComparisonsEvaluationComparisonsRequestFieldAfter = big.NewInt(1 << 0)
)

type ListComparisonsEvaluationComparisonsRequest struct {
	After *string `json:"-" url:"after,omitempty"`

	// Private bitmask of fields set to an explicit value and therefore not to be omitted
	explicitFields *big.Int `json:"-" url:"-"`
}

func (l *ListComparisonsEvaluationComparisonsRequest) require(field *big.Int) {
	if l.explicitFields == nil {
		l.explicitFields = big.NewInt(0)
	}
	l.explicitFields.Or(l.explicitFields, field)
}

// SetAfter sets the After field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (l *ListComparisonsEvaluationComparisonsRequest) SetAfter(after *string) {
	l.After = after
	l.require(listComparisonsEvaluationComparisonsRequestFieldAfter)
}

var (
	answerRefFieldAccountID      = big.NewInt(1 << 0)
	answerRefFieldConversationID = big.NewInt(1 << 1)
	answerRefFieldMessageID      = big.NewInt(1 << 2)
)

type AnswerRef struct {
	AccountID      string `json:"accountId" url:"accountId"`
	ConversationID string `json:"conversationId" url:"conversationId"`
	MessageID      string `json:"messageId" url:"messageId"`

	// Private bitmask of fields set to an explicit value and therefore not to be omitted
	explicitFields *big.Int `json:"-" url:"-"`

	extraProperties map[string]interface{}
	rawJSON         json.RawMessage
}

func (a *AnswerRef) GetAccountID() string {
	if a == nil {
		return ""
	}
	return a.AccountID
}

func (a *AnswerRef) GetConversationID() string {
	if a == nil {
		return ""
	}
	return a.ConversationID
}

func (a *AnswerRef) GetMessageID() string {
	if a == nil {
		return ""
	}
	return a.MessageID
}

func (a *AnswerRef) GetExtraProperties() map[string]interface{} {
	if a == nil {
		return nil
	}
	return a.extraProperties
}

func (a *AnswerRef) require(field *big.Int) {
	if a.explicitFields == nil {
		a.explicitFields = big.NewInt(0)
	}
	a.explicitFields.Or(a.explicitFields, field)
}

// SetAccountID sets the AccountID field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (a *AnswerRef) SetAccountID(accountID string) {
	a.AccountID = accountID
	a.require(answerRefFieldAccountID)
}

// SetConversationID sets the ConversationID field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (a *AnswerRef) SetConversationID(conversationID string) {
	a.ConversationID = conversationID
	a.require(answerRefFieldConversationID)
}

// SetMessageID sets the MessageID field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (a *AnswerRef) SetMessageID(messageID string) {
	a.MessageID = messageID
	a.require(answerRefFieldMessageID)
}

func (a *AnswerRef) UnmarshalJSON(data []byte) error {
	type unmarshaler AnswerRef
	var value unmarshaler
	if err := json.Unmarshal(data, &value); err != nil {
		return err
	}
	*a = AnswerRef(value)
	extraProperties, err := internal.ExtractExtraProperties(data, *a)
	if err != nil {
		return err
	}
	a.extraProperties = extraProperties
	a.rawJSON = json.RawMessage(data)
	return nil
}

func (a *AnswerRef) MarshalJSON() ([]byte, error) {
	type embed AnswerRef
	var marshaler = struct {
		embed
	}{
		embed: embed(*a),
	}
	explicitMarshaler := internal.HandleExplicitFields(marshaler, a.explicitFields)
	return json.Marshal(explicitMarshaler)
}

func (a *AnswerRef) String() string {
	if a == nil {
		return "<nil>"
	}
	if len(a.rawJSON) > 0 {
		if value, err := internal.StringifyJSON(a.rawJSON); err == nil {
			return value
		}
	}
	if value, err := internal.StringifyJSON(a); err == nil {
		return value
	}
	return fmt.Sprintf("%#v", a)
}

var (
	caseInputFieldBaseline  = big.NewInt(1 << 0)
	caseInputFieldCandidate = big.NewInt(1 << 1)
	caseInputFieldCaseID    = big.NewInt(1 << 2)
)

type CaseInput struct {
	Baseline  *AnswerRef `json:"baseline" url:"baseline"`
	Candidate *AnswerRef `json:"candidate" url:"candidate"`
	CaseID    string     `json:"caseId" url:"caseId"`

	// Private bitmask of fields set to an explicit value and therefore not to be omitted
	explicitFields *big.Int `json:"-" url:"-"`

	extraProperties map[string]interface{}
	rawJSON         json.RawMessage
}

func (c *CaseInput) GetBaseline() *AnswerRef {
	if c == nil {
		return nil
	}
	return c.Baseline
}

func (c *CaseInput) GetCandidate() *AnswerRef {
	if c == nil {
		return nil
	}
	return c.Candidate
}

func (c *CaseInput) GetCaseID() string {
	if c == nil {
		return ""
	}
	return c.CaseID
}

func (c *CaseInput) GetExtraProperties() map[string]interface{} {
	if c == nil {
		return nil
	}
	return c.extraProperties
}

func (c *CaseInput) require(field *big.Int) {
	if c.explicitFields == nil {
		c.explicitFields = big.NewInt(0)
	}
	c.explicitFields.Or(c.explicitFields, field)
}

// SetBaseline sets the Baseline field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (c *CaseInput) SetBaseline(baseline *AnswerRef) {
	c.Baseline = baseline
	c.require(caseInputFieldBaseline)
}

// SetCandidate sets the Candidate field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (c *CaseInput) SetCandidate(candidate *AnswerRef) {
	c.Candidate = candidate
	c.require(caseInputFieldCandidate)
}

// SetCaseID sets the CaseID field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (c *CaseInput) SetCaseID(caseID string) {
	c.CaseID = caseID
	c.require(caseInputFieldCaseID)
}

func (c *CaseInput) UnmarshalJSON(data []byte) error {
	type unmarshaler CaseInput
	var value unmarshaler
	if err := json.Unmarshal(data, &value); err != nil {
		return err
	}
	*c = CaseInput(value)
	extraProperties, err := internal.ExtractExtraProperties(data, *c)
	if err != nil {
		return err
	}
	c.extraProperties = extraProperties
	c.rawJSON = json.RawMessage(data)
	return nil
}

func (c *CaseInput) MarshalJSON() ([]byte, error) {
	type embed CaseInput
	var marshaler = struct {
		embed
	}{
		embed: embed(*c),
	}
	explicitMarshaler := internal.HandleExplicitFields(marshaler, c.explicitFields)
	return json.Marshal(explicitMarshaler)
}

func (c *CaseInput) String() string {
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
