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

# Unit tests for BckbnPay::BankAccountProfile
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe BckbnPay::BankAccountProfile do
  let(:instance) { BckbnPay::BankAccountProfile.new }

  describe 'test an instance of BankAccountProfile' do
    it 'should create an instance of BankAccountProfile' do
      expect(instance).to be_instance_of(BckbnPay::BankAccountProfile)
    end
  end

  let(:attributes) { %w[account_holder_name bank_name account_holder_type account_type encrypted_account_number routing_number] }

  describe 'test attributes' do
    it 'should respond to all attributes' do
      attributes.each do |attribute|
        expect(instance).to respond_to(attribute)
      end
    end
  end
end
