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

# Unit tests for BckbnPay::PaymentIntentAttributes
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe BckbnPay::PaymentIntentAttributes do
  let(:instance) { BckbnPay::PaymentIntentAttributes.new }

  describe 'test an instance of PaymentIntentAttributes' do
    it 'should create an instance of PaymentIntentAttributes' do
      expect(instance).to be_instance_of(BckbnPay::PaymentIntentAttributes)
    end
  end

  let(:attributes) { %w[payment_intent] }

  describe "encoding" do
    it "should be UTF-8" do
      instance.payment_intent = "foobar"
      expect(instance.payment_intent.encoding.to_s).to eq("UTF-8")
    end
  end

  describe 'test attributes' do
    it 'should respond to all attributes' do
      attributes.each do |attribute|
        expect(instance).to respond_to(attribute)
      end
    end
  end
end
