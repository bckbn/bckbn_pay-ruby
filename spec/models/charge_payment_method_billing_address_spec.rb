=begin
#Bckbn Pay API

#API for Bckbn Pay services

The version of the OpenAPI document: 0.1.0

Generated by: https://openapi-generator.tech
Generator version: 7.7.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for BckbnPay::ChargePaymentMethodBillingAddress
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe BckbnPay::ChargePaymentMethodBillingAddress do
  let(:instance) { BckbnPay::ChargePaymentMethodBillingAddress.new }

  describe 'test an instance of ChargePaymentMethodBillingAddress' do
    it 'should create an instance of ChargePaymentMethodBillingAddress' do
      expect(instance).to be_instance_of(BckbnPay::ChargePaymentMethodBillingAddress)
    end
  end

  let(:fields) { %i[address_line1 address_line2 city country email first_name last_name phone postal_code state] }

  it 'should work' do
    fields.each do |field|
      expect(instance).to respond_to(field)
    end
  end
end