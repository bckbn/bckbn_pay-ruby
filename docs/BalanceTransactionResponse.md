# BckbnPay::BalanceTransactionResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |
| **sub_merchant_id** | **String** |  | [optional] |
| **amount** | **Integer** |  | [optional] |
| **charge_id** | **String** |  | [optional] |
| **fee** | **Integer** |  | [optional] |
| **net** | **Integer** |  | [optional] |
| **refund_id** | **String** |  | [optional] |
| **state** | **String** |  | [optional] |
| **type** | **String** |  | [optional] |

## Example

```ruby
require 'bckbn_pay'

instance = BckbnPay::BalanceTransactionResponse.new(
  id: null,
  created_at: null,
  updated_at: null,
  sub_merchant_id: null,
  amount: null,
  charge_id: null,
  fee: null,
  net: null,
  refund_id: null,
  state: null,
  type: null
)
```

