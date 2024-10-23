# BckbnPay::PaymentIntentAttributesPaymentIntent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** |  |  |
| **payment_method_id** | **String** |  | [optional] |
| **capture_async** | **Boolean** |  | [optional] |
| **sub_merchant_id** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |

## Example

```ruby
require 'bckbn_pay'

instance = BckbnPay::PaymentIntentAttributesPaymentIntent.new(
  amount: null,
  payment_method_id: null,
  capture_async: null,
  sub_merchant_id: null,
  description: null
)
```

