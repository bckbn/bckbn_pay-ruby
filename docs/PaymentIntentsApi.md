# BckbnPay::PaymentIntentsApi

All URIs are relative to *https://pay-sandbox.bckbn.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**confirm_payment_intent**](PaymentIntentsApi.md#confirm_payment_intent) | **POST** /payment_intents/{id}/confirm | Confirm a payment intent |
| [**create_payment_intent**](PaymentIntentsApi.md#create_payment_intent) | **POST** /payment_intents | Create a new payment intent |
| [**get_payment_intent**](PaymentIntentsApi.md#get_payment_intent) | **GET** /payment_intents/{id} | Retrieve a payment intent by ID |
| [**list_payment_intents**](PaymentIntentsApi.md#list_payment_intents) | **GET** /payment_intents | List payment intents |
| [**update_payment_intent**](PaymentIntentsApi.md#update_payment_intent) | **POST** /payment_intents/{id} | Update a payment intent |


## confirm_payment_intent

> <PaymentIntentResponse> confirm_payment_intent(x_api_version, id)

Confirm a payment intent

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

api_instance = BckbnPay::PaymentIntentsApi.new
x_api_version = 'x_api_version_example' # String | 
id = 'id_example' # String | The ID of the payment intent to confirm

begin
  # Confirm a payment intent
  result = api_instance.confirm_payment_intent(x_api_version, id)
  p result
rescue BckbnPay::ApiError => e
  puts "Error when calling PaymentIntentsApi->confirm_payment_intent: #{e}"
end
```

#### Using the confirm_payment_intent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentIntentResponse>, Integer, Hash)> confirm_payment_intent_with_http_info(x_api_version, id)

```ruby
begin
  # Confirm a payment intent
  data, status_code, headers = api_instance.confirm_payment_intent_with_http_info(x_api_version, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentIntentResponse>
rescue BckbnPay::ApiError => e
  puts "Error when calling PaymentIntentsApi->confirm_payment_intent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **id** | **String** | The ID of the payment intent to confirm |  |

### Return type

[**PaymentIntentResponse**](PaymentIntentResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_payment_intent

> <PaymentIntentResponse> create_payment_intent(x_api_version, payment_intent_attributes)

Create a new payment intent

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

api_instance = BckbnPay::PaymentIntentsApi.new
x_api_version = 'x_api_version_example' # String | 
payment_intent_attributes = BckbnPay::PaymentIntentAttributes.new # PaymentIntentAttributes | 

begin
  # Create a new payment intent
  result = api_instance.create_payment_intent(x_api_version, payment_intent_attributes)
  p result
rescue BckbnPay::ApiError => e
  puts "Error when calling PaymentIntentsApi->create_payment_intent: #{e}"
end
```

#### Using the create_payment_intent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentIntentResponse>, Integer, Hash)> create_payment_intent_with_http_info(x_api_version, payment_intent_attributes)

```ruby
begin
  # Create a new payment intent
  data, status_code, headers = api_instance.create_payment_intent_with_http_info(x_api_version, payment_intent_attributes)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentIntentResponse>
rescue BckbnPay::ApiError => e
  puts "Error when calling PaymentIntentsApi->create_payment_intent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **payment_intent_attributes** | [**PaymentIntentAttributes**](PaymentIntentAttributes.md) |  |  |

### Return type

[**PaymentIntentResponse**](PaymentIntentResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_payment_intent

> <PaymentIntentResponse> get_payment_intent(x_api_version, id)

Retrieve a payment intent by ID

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

api_instance = BckbnPay::PaymentIntentsApi.new
x_api_version = 'x_api_version_example' # String | 
id = 'id_example' # String | The ID of the payment intent to retrieve

begin
  # Retrieve a payment intent by ID
  result = api_instance.get_payment_intent(x_api_version, id)
  p result
rescue BckbnPay::ApiError => e
  puts "Error when calling PaymentIntentsApi->get_payment_intent: #{e}"
end
```

#### Using the get_payment_intent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentIntentResponse>, Integer, Hash)> get_payment_intent_with_http_info(x_api_version, id)

```ruby
begin
  # Retrieve a payment intent by ID
  data, status_code, headers = api_instance.get_payment_intent_with_http_info(x_api_version, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentIntentResponse>
rescue BckbnPay::ApiError => e
  puts "Error when calling PaymentIntentsApi->get_payment_intent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **id** | **String** | The ID of the payment intent to retrieve |  |

### Return type

[**PaymentIntentResponse**](PaymentIntentResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_payment_intents

> <ListPaymentIntentsResponse> list_payment_intents(x_api_version, opts)

List payment intents

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

api_instance = BckbnPay::PaymentIntentsApi.new
x_api_version = 'x_api_version_example' # String | 
opts = {
  page: 56, # Integer | The page of results to retrieve.
  per_page: 56, # Integer | Number of results per page.
  sub_merchant_id: 'sub_merchant_id_example' # String | Filter results by sub_merchant ID.
}

begin
  # List payment intents
  result = api_instance.list_payment_intents(x_api_version, opts)
  p result
rescue BckbnPay::ApiError => e
  puts "Error when calling PaymentIntentsApi->list_payment_intents: #{e}"
end
```

#### Using the list_payment_intents_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListPaymentIntentsResponse>, Integer, Hash)> list_payment_intents_with_http_info(x_api_version, opts)

```ruby
begin
  # List payment intents
  data, status_code, headers = api_instance.list_payment_intents_with_http_info(x_api_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListPaymentIntentsResponse>
rescue BckbnPay::ApiError => e
  puts "Error when calling PaymentIntentsApi->list_payment_intents_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **page** | **Integer** | The page of results to retrieve. | [optional] |
| **per_page** | **Integer** | Number of results per page. | [optional] |
| **sub_merchant_id** | **String** | Filter results by sub_merchant ID. | [optional] |

### Return type

[**ListPaymentIntentsResponse**](ListPaymentIntentsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_payment_intent

> <PaymentIntentResponse> update_payment_intent(x_api_version, id, update_payment_intent_request)

Update a payment intent

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

api_instance = BckbnPay::PaymentIntentsApi.new
x_api_version = 'x_api_version_example' # String | 
id = 'id_example' # String | The ID of the payment intent to update
update_payment_intent_request = BckbnPay::UpdatePaymentIntentRequest.new # UpdatePaymentIntentRequest | 

begin
  # Update a payment intent
  result = api_instance.update_payment_intent(x_api_version, id, update_payment_intent_request)
  p result
rescue BckbnPay::ApiError => e
  puts "Error when calling PaymentIntentsApi->update_payment_intent: #{e}"
end
```

#### Using the update_payment_intent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentIntentResponse>, Integer, Hash)> update_payment_intent_with_http_info(x_api_version, id, update_payment_intent_request)

```ruby
begin
  # Update a payment intent
  data, status_code, headers = api_instance.update_payment_intent_with_http_info(x_api_version, id, update_payment_intent_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentIntentResponse>
rescue BckbnPay::ApiError => e
  puts "Error when calling PaymentIntentsApi->update_payment_intent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_version** | **String** |  |  |
| **id** | **String** | The ID of the payment intent to update |  |
| **update_payment_intent_request** | [**UpdatePaymentIntentRequest**](UpdatePaymentIntentRequest.md) |  |  |

### Return type

[**PaymentIntentResponse**](PaymentIntentResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

