
package api

import (
	json "encoding/json"
	internal "github.com/aadi-labs/sikaru-sdk/go/internal"
	big "math/big"
)

var (
	scheduleInputFieldIdempotencyKey  = big.NewInt(1 << 0)
	scheduleInputFieldInput           = big.NewInt(1 << 1)
	scheduleInputFieldIntervalSeconds = big.NewInt(1 << 2)
	scheduleInputFieldSessionID       = big.NewInt(1 << 3)
)

type ScheduleInput struct {
	IdempotencyKey  *string        `json:"idempotency_key,omitempty" url:"-"`
	Input           map[string]any `json:"input" url:"-"`
	IntervalSeconds int            `json:"interval_seconds" url:"-"`
	SessionID       string         `json:"session_id" url:"-"`

	// Private bitmask of fields set to an explicit value and therefore not to be omitted
	explicitFields *big.Int `json:"-" url:"-"`
}

func (s *ScheduleInput) require(field *big.Int) {
	if s.explicitFields == nil {
		s.explicitFields = big.NewInt(0)
	}
	s.explicitFields.Or(s.explicitFields, field)
}

// SetIdempotencyKey sets the IdempotencyKey field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (s *ScheduleInput) SetIdempotencyKey(idempotencyKey *string) {
	s.IdempotencyKey = idempotencyKey
	s.require(scheduleInputFieldIdempotencyKey)
}

// SetInput sets the Input field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (s *ScheduleInput) SetInput(input map[string]any) {
	s.Input = input
	s.require(scheduleInputFieldInput)
}

// SetIntervalSeconds sets the IntervalSeconds field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (s *ScheduleInput) SetIntervalSeconds(intervalSeconds int) {
	s.IntervalSeconds = intervalSeconds
	s.require(scheduleInputFieldIntervalSeconds)
}

// SetSessionID sets the SessionID field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (s *ScheduleInput) SetSessionID(sessionID string) {
	s.SessionID = sessionID
	s.require(scheduleInputFieldSessionID)
}

func (s *ScheduleInput) UnmarshalJSON(data []byte) error {
	type unmarshaler ScheduleInput
	var body unmarshaler
	if err := json.Unmarshal(data, &body); err != nil {
		return err
	}
	*s = ScheduleInput(body)
	return nil
}

func (s *ScheduleInput) MarshalJSON() ([]byte, error) {
	type embed ScheduleInput
	var marshaler = struct {
		embed
	}{
		embed: embed(*s),
	}
	explicitMarshaler := internal.HandleExplicitFields(marshaler, s.explicitFields)
	return json.Marshal(explicitMarshaler)
}

var (
	listSchedulesRunSchedulesRequestFieldSessionID = big.NewInt(1 << 0)
)

type ListSchedulesRunSchedulesRequest struct {
	SessionID *string `json:"-" url:"session_id,omitempty"`

	// Private bitmask of fields set to an explicit value and therefore not to be omitted
	explicitFields *big.Int `json:"-" url:"-"`
}

func (l *ListSchedulesRunSchedulesRequest) require(field *big.Int) {
	if l.explicitFields == nil {
		l.explicitFields = big.NewInt(0)
	}
	l.explicitFields.Or(l.explicitFields, field)
}

// SetSessionID sets the SessionID field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (l *ListSchedulesRunSchedulesRequest) SetSessionID(sessionID *string) {
	l.SessionID = sessionID
	l.require(listSchedulesRunSchedulesRequestFieldSessionID)
}

var (
	pauseInputFieldPaused = big.NewInt(1 << 0)
)

type PauseInput struct {
	Paused bool `json:"paused" url:"-"`

	// Private bitmask of fields set to an explicit value and therefore not to be omitted
	explicitFields *big.Int `json:"-" url:"-"`
}

func (p *PauseInput) require(field *big.Int) {
	if p.explicitFields == nil {
		p.explicitFields = big.NewInt(0)
	}
	p.explicitFields.Or(p.explicitFields, field)
}

// SetPaused sets the Paused field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (p *PauseInput) SetPaused(paused bool) {
	p.Paused = paused
	p.require(pauseInputFieldPaused)
}

func (p *PauseInput) UnmarshalJSON(data []byte) error {
	type unmarshaler PauseInput
	var body unmarshaler
	if err := json.Unmarshal(data, &body); err != nil {
		return err
	}
	*p = PauseInput(body)
	return nil
}

func (p *PauseInput) MarshalJSON() ([]byte, error) {
	type embed PauseInput
	var marshaler = struct {
		embed
	}{
		embed: embed(*p),
	}
	explicitMarshaler := internal.HandleExplicitFields(marshaler, p.explicitFields)
	return json.Marshal(explicitMarshaler)
}
