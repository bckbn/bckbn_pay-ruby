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

# Unit tests for BckbnPay::PaymentIntentAttributesPaymentIntent
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe BckbnPay::PaymentIntentAttributesPaymentIntent do
  let(:instance) { BckbnPay::PaymentIntentAttributesPaymentIntent.new }

  describe 'test an instance of PaymentIntentAttributesPaymentIntent' do
    it 'should create an instance of PaymentIntentAttributesPaymentIntent' do
      expect(instance).to be_instance_of(BckbnPay::PaymentIntentAttributesPaymentIntent)
    end
  end

  let(:attributes) { %w[amount payment_method_id capture_async sub_merchant_id description] }

  describe "encoding" do
    it "should be UTF-8" do
      instance.description = "foobar"
      expect(instance.description.encoding.to_s).to eq("UTF-8")
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
