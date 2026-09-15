
package api

import (
	json "encoding/json"
	fmt "fmt"
	internal "github.com/aadi-labs/sikaru-sdk/go/internal"
	big "math/big"
	time "time"
)

var (
	listMessagesConversationsRequestFieldAccountID = big.NewInt(1 << 0)
	listMessagesConversationsRequestFieldLimit     = big.NewInt(1 << 1)
	listMessagesConversationsRequestFieldCursor    = big.NewInt(1 << 2)
)

type ListMessagesConversationsRequest struct {
	AccountID string  `json:"-" url:"account_id"`
	Limit     *int    `json:"-" url:"limit,omitempty"`
	Cursor    *string `json:"-" url:"cursor,omitempty"`

	// Private bitmask of fields set to an explicit value and therefore not to be omitted
	explicitFields *big.Int `json:"-" url:"-"`
}

func (l *ListMessagesConversationsRequest) require(field *big.Int) {
	if l.explicitFields == nil {
		l.explicitFields = big.NewInt(0)
	}
	l.explicitFields.Or(l.explicitFields, field)
}

// SetAccountID sets the AccountID field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (l *ListMessagesConversationsRequest) SetAccountID(accountID string) {
	l.AccountID = accountID
	l.require(listMessagesConversationsRequestFieldAccountID)
}

// SetLimit sets the Limit field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (l *ListMessagesConversationsRequest) SetLimit(limit *int) {
	l.Limit = limit
	l.require(listMessagesConversationsRequestFieldLimit)
}

// SetCursor sets the Cursor field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (l *ListMessagesConversationsRequest) SetCursor(cursor *string) {
	l.Cursor = cursor
	l.require(listMessagesConversationsRequestFieldCursor)
}

var (
	deliveredMessageFieldAccountID   = big.NewInt(1 << 0)
	deliveredMessageFieldContent     = big.NewInt(1 << 1)
	deliveredMessageFieldDeliveredAt = big.NewInt(1 << 2)
	deliveredMessageFieldEnvironment = big.NewInt(1 << 3)
	deliveredMessageFieldMessageID   = big.NewInt(1 << 4)
	deliveredMessageFieldPosition    = big.NewInt(1 << 5)
	deliveredMessageFieldRole        = big.NewInt(1 << 6)
	deliveredMessageFieldTraceID     = big.NewInt(1 << 7)
)

type DeliveredMessage struct {
	AccountID   string                       `json:"-" url:"account_id"`
	Content     string                       `json:"content" url:"-"`
	DeliveredAt time.Time                    `json:"deliveredAt" url:"-"`
	Environment *DeliveredMessageEnvironment `json:"environment,omitempty" url:"-"`
	MessageID   string                       `json:"messageId" url:"-"`
	Position    int                          `json:"position" url:"-"`
	Role        DeliveredMessageRole         `json:"role" url:"-"`
	TraceID     *string                      `json:"traceId,omitempty" url:"-"`

	// Private bitmask of fields set to an explicit value and therefore not to be omitted
	explicitFields *big.Int `json:"-" url:"-"`
}

func (d *DeliveredMessage) require(field *big.Int) {
	if d.explicitFields == nil {
		d.explicitFields = big.NewInt(0)
	}
	d.explicitFields.Or(d.explicitFields, field)
}

// SetAccountID sets the AccountID field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (d *DeliveredMessage) SetAccountID(accountID string) {
	d.AccountID = accountID
	d.require(deliveredMessageFieldAccountID)
}

// SetContent sets the Content field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (d *DeliveredMessage) SetContent(content string) {
	d.Content = content
	d.require(deliveredMessageFieldContent)
}

// SetDeliveredAt sets the DeliveredAt field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (d *DeliveredMessage) SetDeliveredAt(deliveredAt time.Time) {
	d.DeliveredAt = deliveredAt
	d.require(deliveredMessageFieldDeliveredAt)
}

// SetEnvironment sets the Environment field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (d *DeliveredMessage) SetEnvironment(environment *DeliveredMessageEnvironment) {
	d.Environment = environment
	d.require(deliveredMessageFieldEnvironment)
}

// SetMessageID sets the MessageID field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (d *DeliveredMessage) SetMessageID(messageID string) {
	d.MessageID = messageID
	d.require(deliveredMessageFieldMessageID)
}

// SetPosition sets the Position field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (d *DeliveredMessage) SetPosition(position int) {
	d.Position = position
	d.require(deliveredMessageFieldPosition)
}

// SetRole sets the Role field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (d *DeliveredMessage) SetRole(role DeliveredMessageRole) {
	d.Role = role
	d.require(deliveredMessageFieldRole)
}

// SetTraceID sets the TraceID field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (d *DeliveredMessage) SetTraceID(traceID *string) {
	d.TraceID = traceID
	d.require(deliveredMessageFieldTraceID)
}

func (d *DeliveredMessage) UnmarshalJSON(data []byte) error {
	type unmarshaler DeliveredMessage
	var body unmarshaler
	if err := json.Unmarshal(data, &body); err != nil {
		return err
	}
	*d = DeliveredMessage(body)
	return nil
}

func (d *DeliveredMessage) MarshalJSON() ([]byte, error) {
	type embed DeliveredMessage
	var marshaler = struct {
		embed
		DeliveredAt *internal.DateTime `json:"deliveredAt"`
	}{
		embed:       embed(*d),
		DeliveredAt: internal.NewDateTime(d.DeliveredAt),
	}
	explicitMarshaler := internal.HandleExplicitFields(marshaler, d.explicitFields)
	return json.Marshal(explicitMarshaler)
}

type DeliveredMessageEnvironment string

const (
	DeliveredMessageEnvironmentProduction  DeliveredMessageEnvironment = "production"
	DeliveredMessageEnvironmentStaging     DeliveredMessageEnvironment = "staging"
	DeliveredMessageEnvironmentDevelopment DeliveredMessageEnvironment = "development"
)

func NewDeliveredMessageEnvironmentFromString(s string) (DeliveredMessageEnvironment, error) {
	switch s {
	case "production":
		return DeliveredMessageEnvironmentProduction, nil
	case "staging":
		return DeliveredMessageEnvironmentStaging, nil
	case "development":
		return DeliveredMessageEnvironmentDevelopment, nil
	}
	var t DeliveredMessageEnvironment
	return "", fmt.Errorf("%s is not a valid %T", s, t)
}

func (d DeliveredMessageEnvironment) Ptr() *DeliveredMessageEnvironment {
	return &d
}

type DeliveredMessageRole string

const (
	DeliveredMessageRoleUser      DeliveredMessageRole = "user"
	DeliveredMessageRoleAssistant DeliveredMessageRole = "assistant"
	DeliveredMessageRoleTool      DeliveredMessageRole = "tool"
)

func NewDeliveredMessageRoleFromString(s string) (DeliveredMessageRole, error) {
	switch s {
	case "user":
		return DeliveredMessageRoleUser, nil
	case "assistant":
		return DeliveredMessageRoleAssistant, nil
	case "tool":
		return DeliveredMessageRoleTool, nil
	}
	var t DeliveredMessageRole
	return "", fmt.Errorf("%s is not a valid %T", s, t)
}

func (d DeliveredMessageRole) Ptr() *DeliveredMessageRole {
	return &d
}
