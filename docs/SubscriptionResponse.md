# BckbnPay::SubscriptionResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sub_merchant_id** | **String** |  | [optional] |
| **customer_id** | **String** |  | [optional] |
| **payment_method_id** | **String** |  | [optional] |
| **amount** | **Integer** |  | [optional] |
| **interval** | **String** |  | [optional] |
| **interval_count** | **Integer** |  | [optional] |
| **next_payment_date** | **Time** |  | [optional] |
| **state** | **String** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'bckbn_pay'

instance = BckbnPay::SubscriptionResponse.new(
  sub_merchant_id: null,
  customer_id: null,
  payment_method_id: null,
  amount: null,
  interval: null,
  interval_count: null,
  next_payment_date: null,
  state: null,
  created_at: null,
  updated_at: null
)
```

