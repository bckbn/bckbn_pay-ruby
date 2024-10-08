=begin
#Bckbn Pay API

#API for Bckbn Pay services

The version of the OpenAPI document: 0.3.0

Generated by: https://openapi-generator.tech
Generator version: 7.7.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for BckbnPay::SubMerchantAttributes
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe BckbnPay::SubMerchantAttributes do
  let(:instance) { BckbnPay::SubMerchantAttributes.new }

  describe 'test an instance of SubMerchantAttributes' do
    it 'should create an instance of SubMerchantAttributes' do
      expect(instance).to be_instance_of(BckbnPay::SubMerchantAttributes)
    end
  end

  let(:attributes) { %w[name worldpay_merchant_id] }

  describe 'test attributes' do
    it 'should respond to all attributes' do
      attributes.each do |attribute|
        expect(instance).to respond_to(attribute)
      end
    end
  end
end
