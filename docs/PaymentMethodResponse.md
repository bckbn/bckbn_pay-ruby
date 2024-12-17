# BckbnPay::PaymentMethodResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **type** | **String** |  | [optional] |
| **partner_id** | **String** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |
| **customer_id** | **String** |  | [optional] |
| **metadata** | **Hash&lt;String, String&gt;** | Additional metadata key-value pairs | [optional] |
| **billing_address** | [**BillingAddress**](BillingAddress.md) |  | [optional] |
| **card_profile** | [**CardProfile**](CardProfile.md) |  | [optional] |
| **bank_account_profile** | [**BankAccountProfile**](BankAccountProfile.md) |  | [optional] |

## Example

```ruby
require 'bckbn_pay'

instance = BckbnPay::PaymentMethodResponse.new(
  id: null,
  type: null,
  partner_id: null,
  created_at: null,
  updated_at: null,
  customer_id: null,
  metadata: null,
  billing_address: null,
  card_profile: null,
  bank_account_profile: null
)
```

