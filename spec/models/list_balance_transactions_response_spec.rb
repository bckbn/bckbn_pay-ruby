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

# Unit tests for BckbnPay::ListBalanceTransactionsResponse
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe BckbnPay::ListBalanceTransactionsResponse do
  let(:instance) { BckbnPay::ListBalanceTransactionsResponse.new }

  describe 'test an instance of ListBalanceTransactionsResponse' do
    it 'should create an instance of ListBalanceTransactionsResponse' do
      expect(instance).to be_instance_of(BckbnPay::ListBalanceTransactionsResponse)
    end
  end

  let(:attributes) { %w[data meta] }

  describe 'test attributes' do
    it 'should respond to all attributes' do
      attributes.each do |attribute|
        expect(instance).to respond_to(attribute)
      end
    end
  end
end
