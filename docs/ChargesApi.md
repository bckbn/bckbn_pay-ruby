# BckbnPay::ChargesApi

All URIs are relative to *https://pay-sandbox.bckbn.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**cancel_charge**](ChargesApi.md#cancel_charge) | **PUT** /charges/{id}/cancel | Cancel a charge |
| [**capture_charge**](ChargesApi.md#capture_charge) | **PUT** /charges/{id}/capture | Capture a charge |
| [**get_charge**](ChargesApi.md#get_charge) | **GET** /charges/{id} | Retrieve a charge |
| [**list_charges**](ChargesApi.md#list_charges) | **GET** /charges | List all charges |


## cancel_charge

> <ChargeResponse> cancel_charge(x_api_version, id)

Cancel a charge

### Examples

```ruby
require 'time'
require 'bckbn_pay'
# setup authorization
BckbnPay.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyAuth'] = 'Bearer'
end

api_instance = BckbnPay::ChargesApi.new
x_api_version = 'x_api_version_example' # String | 
id = 'id_example' # String | 

begin
  # Cancel a charge
  result = api_instance.cancel_charge(x_api_version, id)
  p result
rescue BckbnPay::ApiError => e
  puts "Error when calling ChargesApi->cancel_charge: #{e}"
end
```

#### Using the cancel_charge_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ChargeResponse>, Integer, Hash)> cancel_charge_with_http_info(x_api_version, id)

```ruby
begin
  # Cancel a charge
  data, status_code, headers = api_instance.cancel_charge_with_http_info(x_api_version, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ChargeResponse>
rescue BckbnPay::ApiError => e
  puts "Error when calling ChargesApi->cancel_charge_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **id** | **String** |  |  |

### Return type

[**ChargeResponse**](ChargeResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## capture_charge

> <ChargeResponse> capture_charge(x_api_version, id)

Capture a charge

### Examples

```ruby
require 'time'
require 'bckbn_pay'
# setup authorization
BckbnPay.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyAuth'] = 'Bearer'
end

api_instance = BckbnPay::ChargesApi.new
x_api_version = 'x_api_version_example' # String | 
id = 'id_example' # String | 

begin
  # Capture a charge
  result = api_instance.capture_charge(x_api_version, id)
  p result
rescue BckbnPay::ApiError => e
  puts "Error when calling ChargesApi->capture_charge: #{e}"
end
```

#### Using the capture_charge_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ChargeResponse>, Integer, Hash)> capture_charge_with_http_info(x_api_version, id)

```ruby
begin
  # Capture a charge
  data, status_code, headers = api_instance.capture_charge_with_http_info(x_api_version, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ChargeResponse>
rescue BckbnPay::ApiError => e
  puts "Error when calling ChargesApi->capture_charge_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **id** | **String** |  |  |

### Return type

[**ChargeResponse**](ChargeResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_charge

> <ChargeResponse> get_charge(x_api_version, id, opts)

Retrieve a charge

### Examples

```ruby
require 'time'
require 'bckbn_pay'
# setup authorization
BckbnPay.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyAuth'] = 'Bearer'
end

api_instance = BckbnPay::ChargesApi.new
x_api_version = 'x_api_version_example' # String | 
id = 'id_example' # String | 
opts = {
  sub_merchant_id: 'sub_merchant_id_example' # String | Filter results by sub_merchant ID.
}

begin
  # Retrieve a charge
  result = api_instance.get_charge(x_api_version, id, opts)
  p result
rescue BckbnPay::ApiError => e
  puts "Error when calling ChargesApi->get_charge: #{e}"
end
```

#### Using the get_charge_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ChargeResponse>, Integer, Hash)> get_charge_with_http_info(x_api_version, id, opts)

```ruby
begin
  # Retrieve a charge
  data, status_code, headers = api_instance.get_charge_with_http_info(x_api_version, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ChargeResponse>
rescue BckbnPay::ApiError => e
  puts "Error when calling ChargesApi->get_charge_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **id** | **String** |  |  |
| **sub_merchant_id** | **String** | Filter results by sub_merchant ID. | [optional] |

### Return type

[**ChargeResponse**](ChargeResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_charges

> <ListChargesResponse> list_charges(x_api_version, opts)

List all charges

### Examples

```ruby
require 'time'
require 'bckbn_pay'
# setup authorization
BckbnPay.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyAuth'] = 'Bearer'
end

api_instance = BckbnPay::ChargesApi.new
x_api_version = 'x_api_version_example' # String | 
opts = {
  page: 56, # Integer | The page of results to retrieve.
  per_page: 56, # Integer | Number of results per page.
  sub_merchant_id: 'sub_merchant_id_example', # String | Filter results by sub_merchant ID.
  payment_intent_id: 'payment_intent_id_example' # String | Filter results by payment intent ID.
}

begin
  # List all charges
  result = api_instance.list_charges(x_api_version, opts)
  p result
rescue BckbnPay::ApiError => e
  puts "Error when calling ChargesApi->list_charges: #{e}"
end
```

#### Using the list_charges_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListChargesResponse>, Integer, Hash)> list_charges_with_http_info(x_api_version, opts)

```ruby
begin
  # List all charges
  data, status_code, headers = api_instance.list_charges_with_http_info(x_api_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListChargesResponse>
rescue BckbnPay::ApiError => e
  puts "Error when calling ChargesApi->list_charges_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **page** | **Integer** | The page of results to retrieve. | [optional] |
| **per_page** | **Integer** | Number of results per page. | [optional] |
| **sub_merchant_id** | **String** | Filter results by sub_merchant ID. | [optional] |
| **payment_intent_id** | **String** | Filter results by payment intent ID. | [optional] |

### Return type

[**ListChargesResponse**](ListChargesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

