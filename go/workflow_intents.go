
package api

import (
	json "encoding/json"
	internal "github.com/aadi-labs/sikaru-sdk/go/internal"
	big "math/big"
)

var (
	createProductWorkflowIntentRequestFieldDescription = big.NewInt(1 << 0)
)

type CreateProductWorkflowIntentRequest struct {
	Description string `json:"description" url:"-"`

	// Private bitmask of fields set to an explicit value and therefore not to be omitted
	explicitFields *big.Int `json:"-" url:"-"`
}

func (c *CreateProductWorkflowIntentRequest) require(field *big.Int) {
	if c.explicitFields == nil {
		c.explicitFields = big.NewInt(0)
	}
	c.explicitFields.Or(c.explicitFields, field)
}

// SetDescription sets the Description field and marks it as non-optional;
// this prevents an empty or null value for this field from being omitted during serialization.
func (c *CreateProductWorkflowIntentRequest) SetDescription(description string) {
	c.Description = description
	c.require(createProductWorkflowIntentRequestFieldDescription)
}

func (c *CreateProductWorkflowIntentRequest) UnmarshalJSON(data []byte) error {
	type unmarshaler CreateProductWorkflowIntentRequest
	var body unmarshaler
	if err := json.Unmarshal(data, &body); err != nil {
		return err
	}
	*c = CreateProductWorkflowIntentRequest(body)
	return nil
}

func (c *CreateProductWorkflowIntentRequest) MarshalJSON() ([]byte, error) {
	type embed CreateProductWorkflowIntentRequest
	var marshaler = struct {
		embed
	}{
		embed: embed(*c),
	}
	explicitMarshaler := internal.HandleExplicitFields(marshaler, c.explicitFields)
	return json.Marshal(explicitMarshaler)
}
