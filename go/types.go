
package api

import (
	json "encoding/json"
	fmt "fmt"
	internal "github.com/aadi-labs/sikaru-sdk/go/internal"
	big "math/big"
)

var (
	hTTPValidationErrorFieldDetail = big.NewInt(1 << 0)
)

type HTTPValidationError struct {
	Detail []*ValidationError `json:"detail,omitempty" url:"detail,omitempty"`

	// Private bitmask of fields set to an explicit value and therefore not to be omitted
	explicitFields *big.Int `json:"-" url:"-"`

	extraProperties map[string]interface{}
	rawJSON         json.RawMessage
}

func (h *HTTPValidationError) GetDetail() []*ValidationError {
	if h == nil {
		return nil
	}
	return h.Detail
}

func (h *HTTPValidationError) GetExtraProperties() map[string]interface{} {
	if h == nil {
		return nil
	}
	return h.extraProperties
}

func (h *HTTPValidationError) require(field *big.Int) {
	if h.explicitFields == nil {
		h.explicitFields = big.NewInt(0)
	}
	h.explicitFields.Or(h.explicitFields, field)
}

// SetDetail sets the Detail field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (h *HTTPValidationError) SetDetail(detail []*ValidationError) {
	h.Detail = detail
	h.require(hTTPValidationErrorFieldDetail)
}

func (h *HTTPValidationError) UnmarshalJSON(data []byte) error {
	type unmarshaler HTTPValidationError
	var value unmarshaler
	if err := json.Unmarshal(data, &value); err != nil {
		return err
	}
	*h = HTTPValidationError(value)
	extraProperties, err := internal.ExtractExtraProperties(data, *h)
	if err != nil {
		return err
	}
	h.extraProperties = extraProperties
	h.rawJSON = json.RawMessage(data)
	return nil
}

func (h *HTTPValidationError) MarshalJSON() ([]byte, error) {
	type embed HTTPValidationError
	var marshaler = struct {
		embed
	}{
		embed: embed(*h),
	}
	explicitMarshaler := internal.HandleExplicitFields(marshaler, h.explicitFields)
	return json.Marshal(explicitMarshaler)
}

func (h *HTTPValidationError) String() string {
	if h == nil {
		return "<nil>"
	}
	if len(h.rawJSON) > 0 {
		if value, err := internal.StringifyJSON(h.rawJSON); err == nil {
			return value
		}
	}
	if value, err := internal.StringifyJSON(h); err == nil {
		return value
	}
	return fmt.Sprintf("%#v", h)
}

var (
	judgmentTargetFieldAccountID      = big.NewInt(1 << 0)
	judgmentTargetFieldConversationID = big.NewInt(1 << 1)
	judgmentTargetFieldKind           = big.NewInt(1 << 2)
	judgmentTargetFieldMessageID      = big.NewInt(1 << 3)
	judgmentTargetFieldSpanID         = big.NewInt(1 << 4)
)

type JudgmentTarget struct {
	AccountID      string             `json:"accountId" url:"accountId"`
	ConversationID *string            `json:"conversationId,omitempty" url:"conversationId,omitempty"`
	Kind           JudgmentTargetKind `json:"kind" url:"kind"`
	MessageID      *string            `json:"messageId,omitempty" url:"messageId,omitempty"`
	SpanID         *string            `json:"spanId,omitempty" url:"spanId,omitempty"`

	// Private bitmask of fields set to an explicit value and therefore not to be omitted
	explicitFields *big.Int `json:"-" url:"-"`

	extraProperties map[string]interface{}
	rawJSON         json.RawMessage
}

func (j *JudgmentTarget) GetAccountID() string {
	if j == nil {
		return ""
	}
	return j.AccountID
}

func (j *JudgmentTarget) GetConversationID() *string {
	if j == nil {
		return nil
	}
	return j.ConversationID
}

func (j *JudgmentTarget) GetKind() JudgmentTargetKind {
	if j == nil {
		return ""
	}
	return j.Kind
}

func (j *JudgmentTarget) GetMessageID() *string {
	if j == nil {
		return nil
	}
	return j.MessageID
}

func (j *JudgmentTarget) GetSpanID() *string {
	if j == nil {
		return nil
	}
	return j.SpanID
}

func (j *JudgmentTarget) GetExtraProperties() map[string]interface{} {
	if j == nil {
		return nil
	}
	return j.extraProperties
}

func (j *JudgmentTarget) require(field *big.Int) {
	if j.explicitFields == nil {
		j.explicitFields = big.NewInt(0)
	}
	j.explicitFields.Or(j.explicitFields, field)
}

// SetAccountID sets the AccountID field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (j *JudgmentTarget) SetAccountID(accountID string) {
	j.AccountID = accountID
	j.require(judgmentTargetFieldAccountID)
}

// SetConversationID sets the ConversationID field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (j *JudgmentTarget) SetConversationID(conversationID *string) {
	j.ConversationID = conversationID
	j.require(judgmentTargetFieldConversationID)
}

// SetKind sets the Kind field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (j *JudgmentTarget) SetKind(kind JudgmentTargetKind) {
	j.Kind = kind
	j.require(judgmentTargetFieldKind)
}

// SetMessageID sets the MessageID field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (j *JudgmentTarget) SetMessageID(messageID *string) {
	j.MessageID = messageID
	j.require(judgmentTargetFieldMessageID)
}

// SetSpanID sets the SpanID field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (j *JudgmentTarget) SetSpanID(spanID *string) {
	j.SpanID = spanID
	j.require(judgmentTargetFieldSpanID)
}

func (j *JudgmentTarget) UnmarshalJSON(data []byte) error {
	type unmarshaler JudgmentTarget
	var value unmarshaler
	if err := json.Unmarshal(data, &value); err != nil {
		return err
	}
	*j = JudgmentTarget(value)
	extraProperties, err := internal.ExtractExtraProperties(data, *j)
	if err != nil {
		return err
	}
	j.extraProperties = extraProperties
	j.rawJSON = json.RawMessage(data)
	return nil
}

func (j *JudgmentTarget) MarshalJSON() ([]byte, error) {
	type embed JudgmentTarget
	var marshaler = struct {
		embed
	}{
		embed: embed(*j),
	}
	explicitMarshaler := internal.HandleExplicitFields(marshaler, j.explicitFields)
	return json.Marshal(explicitMarshaler)
}

func (j *JudgmentTarget) String() string {
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

type JudgmentTargetKind string

const (
	JudgmentTargetKindMessage JudgmentTargetKind = "message"
	JudgmentTargetKindSpan    JudgmentTargetKind = "span"
)

func NewJudgmentTargetKindFromString(s string) (JudgmentTargetKind, error) {
	switch s {
	case "message":
		return JudgmentTargetKindMessage, nil
	case "span":
		return JudgmentTargetKindSpan, nil
	}
	var t JudgmentTargetKind
	return "", fmt.Errorf("%s is not a valid %T", s, t)
}

func (j JudgmentTargetKind) Ptr() *JudgmentTargetKind {
	return &j
}

var (
	recoverRunRequestFieldReason = big.NewInt(1 << 0)
)

type RecoverRunRequest struct {
	Reason *string `json:"reason,omitempty" url:"reason,omitempty"`

	// Private bitmask of fields set to an explicit value and therefore not to be omitted
	explicitFields *big.Int `json:"-" url:"-"`

	extraProperties map[string]interface{}
	rawJSON         json.RawMessage
}

func (r *RecoverRunRequest) GetReason() *string {
	if r == nil {
		return nil
	}
	return r.Reason
}

func (r *RecoverRunRequest) GetExtraProperties() map[string]interface{} {
	if r == nil {
		return nil
	}
	return r.extraProperties
}

func (r *RecoverRunRequest) require(field *big.Int) {
	if r.explicitFields == nil {
		r.explicitFields = big.NewInt(0)
	}
	r.explicitFields.Or(r.explicitFields, field)
}

// SetReason sets the Reason field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (r *RecoverRunRequest) SetReason(reason *string) {
	r.Reason = reason
	r.require(recoverRunRequestFieldReason)
}

func (r *RecoverRunRequest) UnmarshalJSON(data []byte) error {
	type unmarshaler RecoverRunRequest
	var value unmarshaler
	if err := json.Unmarshal(data, &value); err != nil {
		return err
	}
	*r = RecoverRunRequest(value)
	extraProperties, err := internal.ExtractExtraProperties(data, *r)
	if err != nil {
		return err
	}
	r.extraProperties = extraProperties
	r.rawJSON = json.RawMessage(data)
	return nil
}

func (r *RecoverRunRequest) MarshalJSON() ([]byte, error) {
	type embed RecoverRunRequest
	var marshaler = struct {
		embed
	}{
		embed: embed(*r),
	}
	explicitMarshaler := internal.HandleExplicitFields(marshaler, r.explicitFields)
	return json.Marshal(explicitMarshaler)
}

func (r *RecoverRunRequest) String() string {
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

var (
	validationErrorFieldCtx   = big.NewInt(1 << 0)
	validationErrorFieldInput = big.NewInt(1 << 1)
	validationErrorFieldLoc   = big.NewInt(1 << 2)
	validationErrorFieldMsg   = big.NewInt(1 << 3)
	validationErrorFieldType  = big.NewInt(1 << 4)
)

type ValidationError struct {
	Ctx   map[string]any            `json:"ctx,omitempty" url:"ctx,omitempty"`
	Input any                       `json:"input,omitempty" url:"input,omitempty"`
	Loc   []*ValidationErrorLocItem `json:"loc" url:"loc"`
	Msg   string                    `json:"msg" url:"msg"`
	Type  string                    `json:"type" url:"type"`

	// Private bitmask of fields set to an explicit value and therefore not to be omitted
	explicitFields *big.Int `json:"-" url:"-"`

	extraProperties map[string]interface{}
	rawJSON         json.RawMessage
}

func (v *ValidationError) GetCtx() map[string]any {
	if v == nil {
		return nil
	}
	return v.Ctx
}

func (v *ValidationError) GetInput() any {
	if v == nil {
		return nil
	}
	return v.Input
}

func (v *ValidationError) GetLoc() []*ValidationErrorLocItem {
	if v == nil {
		return nil
	}
	return v.Loc
}

func (v *ValidationError) GetMsg() string {
	if v == nil {
		return ""
	}
	return v.Msg
}

func (v *ValidationError) GetType() string {
	if v == nil {
		return ""
	}
	return v.Type
}

func (v *ValidationError) GetExtraProperties() map[string]interface{} {
	if v == nil {
		return nil
	}
	return v.extraProperties
}

func (v *ValidationError) require(field *big.Int) {
	if v.explicitFields == nil {
		v.explicitFields = big.NewInt(0)
	}
	v.explicitFields.Or(v.explicitFields, field)
}

// SetCtx sets the Ctx field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (v *ValidationError) SetCtx(ctx map[string]any) {
	v.Ctx = ctx
	v.require(validationErrorFieldCtx)
}

// SetInput sets the Input field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (v *ValidationError) SetInput(input any) {
	v.Input = input
	v.require(validationErrorFieldInput)
}

// SetLoc sets the Loc field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (v *ValidationError) SetLoc(loc []*ValidationErrorLocItem) {
	v.Loc = loc
	v.require(validationErrorFieldLoc)
}

// SetMsg sets the Msg field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (v *ValidationError) SetMsg(msg string) {
	v.Msg = msg
	v.require(validationErrorFieldMsg)
}

// SetType sets the Type field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (v *ValidationError) SetType(type_ string) {
	v.Type = type_
	v.require(validationErrorFieldType)
}

func (v *ValidationError) UnmarshalJSON(data []byte) error {
	type unmarshaler ValidationError
	var value unmarshaler
	if err := json.Unmarshal(data, &value); err != nil {
		return err
	}
	*v = ValidationError(value)
	extraProperties, err := internal.ExtractExtraProperties(data, *v)
	if err != nil {
		return err
	}
	v.extraProperties = extraProperties
	v.rawJSON = json.RawMessage(data)
	return nil
}

func (v *ValidationError) MarshalJSON() ([]byte, error) {
	type embed ValidationError
	var marshaler = struct {
		embed
	}{
		embed: embed(*v),
	}
	explicitMarshaler := internal.HandleExplicitFields(marshaler, v.explicitFields)
	return json.Marshal(explicitMarshaler)
}

func (v *ValidationError) String() string {
	if v == nil {
		return "<nil>"
	}
	if len(v.rawJSON) > 0 {
		if value, err := internal.StringifyJSON(v.rawJSON); err == nil {
			return value
		}
	}
	if value, err := internal.StringifyJSON(v); err == nil {
		return value
	}
	return fmt.Sprintf("%#v", v)
}

type ValidationErrorLocItem struct {
	String  string
	Integer int

	typ string
}

func (v *ValidationErrorLocItem) GetString() string {
	if v == nil {
		return ""
	}
	return v.String
}

func (v *ValidationErrorLocItem) GetInteger() int {
	if v == nil {
		return 0
	}
	return v.Integer
}

func (v *ValidationErrorLocItem) UnmarshalJSON(data []byte) error {
	var valueString string
	if err := json.Unmarshal(data, &valueString); err == nil {
		v.typ = "String"
		v.String = valueString
		return nil
	}
	var valueInteger int
	if err := json.Unmarshal(data, &valueInteger); err == nil {
		v.typ = "Integer"
		v.Integer = valueInteger
		return nil
	}
	return fmt.Errorf("%s cannot be deserialized as a %T", data, v)
}

func (v ValidationErrorLocItem) MarshalJSON() ([]byte, error) {
	if v.typ == "String" || v.String != "" {
		return json.Marshal(v.String)
	}
	if v.typ == "Integer" || v.Integer != 0 {
		return json.Marshal(v.Integer)
	}
	return nil, fmt.Errorf("type %T does not include a non-empty union type", v)
}

type ValidationErrorLocItemVisitor interface {
	VisitString(string) error
	VisitInteger(int) error
}

func (v *ValidationErrorLocItem) Accept(visitor ValidationErrorLocItemVisitor) error {
	if v.typ == "String" || v.String != "" {
		return visitor.VisitString(v.String)
	}
	if v.typ == "Integer" || v.Integer != 0 {
		return visitor.VisitInteger(v.Integer)
	}
	return fmt.Errorf("type %T does not include a non-empty union type", v)
}
