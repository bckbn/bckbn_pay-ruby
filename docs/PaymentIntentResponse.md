# BckbnPay::PaymentIntentResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **active_payment_method_id** | **String** |  | [optional] |
| **amount** | **Float** |  | [optional] |
| **description** | **String** |  | [optional] |
| **state** | **String** |  | [optional] |
| **sub_merchant_id** | **String** |  | [optional] |
| **payment_methods** | [**Array&lt;PaymentMethodResponse&gt;**](PaymentMethodResponse.md) |  | [optional] |

## Example

```ruby
require 'bckbn_pay'

instance = BckbnPay::PaymentIntentResponse.new(
  id: null,
  active_payment_method_id: null,
  amount: null,
  description: null,
  state: null,
  sub_merchant_id: null,
  payment_methods: null
)
```

