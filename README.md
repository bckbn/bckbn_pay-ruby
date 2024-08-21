# bckbn_pay

BckbnPay - the Ruby gem for the Bckbn Pay API

API for Bckbn Pay services

This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 0.1.0
- Package version: 0.2.0
- Generator version: 7.7.0
- Build package: org.openapitools.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build bckbn_pay.gemspec
```

Then either install the gem locally:

```shell
gem install ./bckbn_pay-0.2.0.gem
```

(for development, run `gem install --dev ./bckbn_pay-0.2.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'bckbn_pay', '~> 0.2.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'bckbn_pay', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'bckbn_pay'

# Setup authorization
BckbnPay.configure do |config|
  # Configure Bearer authorization (access_token): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
  # Configure a proc to get access tokens in lieu of the static access_token configuration
  config.access_token_getter = -> { 'YOUR TOKEN GETTER PROC' } 
end

api_instance = BckbnPay::BalanceTransactionsApi.new
x_api_version = 'x_api_version_example' # String | 
opts = {
  page: 56, # Integer | The page of results to retrieve.
  per_page: 56, # Integer | Number of results per page.
  sub_merchant_id: 'sub_merchant_id_example' # String | Filter results by sub_merchant ID.
}

begin
  #List all balance transactions
  result = api_instance.list_balance_transactions(x_api_version, opts)
  p result
rescue BckbnPay::ApiError => e
  puts "Exception when calling BalanceTransactionsApi->list_balance_transactions: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://pay.bckbn.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*BckbnPay::BalanceTransactionsApi* | [**list_balance_transactions**](docs/BalanceTransactionsApi.md#list_balance_transactions) | **GET** /balance_transactions | List all balance transactions
*BckbnPay::ChargesApi* | [**cancel_charge**](docs/ChargesApi.md#cancel_charge) | **PUT** /charges/{id}/cancel | Cancel a charge
*BckbnPay::ChargesApi* | [**capture_charge**](docs/ChargesApi.md#capture_charge) | **PUT** /charges/{id}/capture | Capture a charge
*BckbnPay::ChargesApi* | [**create_charge**](docs/ChargesApi.md#create_charge) | **POST** /charges | Create a charge
*BckbnPay::ChargesApi* | [**get_charge**](docs/ChargesApi.md#get_charge) | **GET** /charges/{id} | Retrieve a charge
*BckbnPay::ChargesApi* | [**list_charges**](docs/ChargesApi.md#list_charges) | **GET** /charges | List all charges
*BckbnPay::PaymentMethodsApi* | [**create_payment_method**](docs/PaymentMethodsApi.md#create_payment_method) | **POST** /payment_methods | Create a payment method
*BckbnPay::PaymentMethodsApi* | [**get_payment_method**](docs/PaymentMethodsApi.md#get_payment_method) | **GET** /payment_methods/{id} | Retrieve a payment method
*BckbnPay::RefundsApi* | [**cancel_refund**](docs/RefundsApi.md#cancel_refund) | **PUT** /refunds/{id}/cancel | Cancel a refund
*BckbnPay::RefundsApi* | [**create_refund**](docs/RefundsApi.md#create_refund) | **POST** /refunds | Create a refund
*BckbnPay::RefundsApi* | [**get_refund**](docs/RefundsApi.md#get_refund) | **GET** /refunds/{id} | Get a refund by ID
*BckbnPay::RefundsApi* | [**list_refunds**](docs/RefundsApi.md#list_refunds) | **GET** /refunds | List refunds for a Charge
*BckbnPay::SubMerchantsApi* | [**create_sub_merchant**](docs/SubMerchantsApi.md#create_sub_merchant) | **POST** /sub_merchants | Create a sub_merchant
*BckbnPay::SubMerchantsApi* | [**get_sub_merchant**](docs/SubMerchantsApi.md#get_sub_merchant) | **GET** /sub_merchants/{id} | Retrieve a sub_merchant


## Documentation for Models

 - [BckbnPay::BalanceTransactionAttributes](docs/BalanceTransactionAttributes.md)
 - [BckbnPay::BalanceTransactionResponse](docs/BalanceTransactionResponse.md)
 - [BckbnPay::BankAccountProfile](docs/BankAccountProfile.md)
 - [BckbnPay::BillingAddress](docs/BillingAddress.md)
 - [BckbnPay::CardProfile](docs/CardProfile.md)
 - [BckbnPay::ChargeAttributes](docs/ChargeAttributes.md)
 - [BckbnPay::ChargeResponse](docs/ChargeResponse.md)
 - [BckbnPay::ListBalanceTransactionsResponse](docs/ListBalanceTransactionsResponse.md)
 - [BckbnPay::ListChargesResponse](docs/ListChargesResponse.md)
 - [BckbnPay::ListRefundsResponse](docs/ListRefundsResponse.md)
 - [BckbnPay::Meta](docs/Meta.md)
 - [BckbnPay::PaymentMethodAttributes](docs/PaymentMethodAttributes.md)
 - [BckbnPay::PaymentMethodResponse](docs/PaymentMethodResponse.md)
 - [BckbnPay::RefundAttributes](docs/RefundAttributes.md)
 - [BckbnPay::RefundResponse](docs/RefundResponse.md)
 - [BckbnPay::SubMerchantAttributes](docs/SubMerchantAttributes.md)
 - [BckbnPay::SubMerchantResponse](docs/SubMerchantResponse.md)


## Documentation for Authorization


Authentication schemes defined for the API:
### bearerAuth

- **Type**: Bearer authentication (access_token)

