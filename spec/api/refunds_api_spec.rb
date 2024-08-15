=begin
#Bckbn Pay API

#API for Bckbn Pay services

The version of the OpenAPI document: 0.1.0

Generated by: https://openapi-generator.tech
Generator version: 7.7.0

=end

require 'spec_helper'
require 'json'

# Unit tests for BckbnPay::RefundsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'RefundsApi' do
  let(:api_instance) { BckbnPay::RefundsApi.new }
  let(:config) do
    api_instance.api_client.config.tap do |c|
      c.access_token = Faker::Lorem.word
      c.host = "localhost:3000"
      c.scheme = "http"
    end
  end
  let(:path) { "/refunds" }
  let(:request_headers) do
    {
      'Accept'        =>  'application/json',
      "Authorization" => "Bearer #{config.access_token}",
      "Content-Type"  => "application/json",
      "Expect" => '',
      'User-Agent' => 'OpenAPI-Generator/0.1.0/ruby',
      'X-Api-Version' => '0.1.0'
    }
  end
  let(:response_headers) do
    {
      'Accept'        =>  'application/json',
      "Content-Type"  => "application/json"
    }
  end

  describe 'test an instance of RefundsApi' do
    it 'should create an instance of RefundsApi' do
      expect(api_instance).to be_instance_of(BckbnPay::RefundsApi)
    end
  end

  # unit tests for refunds_post
  # Create a refund
  # @param x_api_version
  # @param content_type
  # @param refunds_post_request
  # @param [Hash] opts the optional parameters
  # @return [Refund]
  describe 'refunds_post test' do
    let(:body) do
      {
        refund: {
          amount: 14500,
          charge_id: SecureRandom.uuid
        }
      }
    end

    before do
      stub_request(:post, [config.host, path].join)
      .with(headers: request_headers, body: body.to_json)
      .to_return(
        body: fixture("refunds/create_201.json"),
        headers: response_headers,
        status: 201
      )
    end

    it 'should work' do
      res = api_instance.create_refund("0.1.0", body)

      expect(res).to be_a(BckbnPay::RefundResponse)
      expect(a_request(:post, [config.host, path].join).with(headers: request_headers, body: body.to_json)).to have_been_made.once
    end
  end
end
