# frozen_string_literal: true

require "spec_helper"

RSpec.describe Bckbn::Ach do
  let(:access_token) { Faker::Lorem.word }
  let(:merchant_id) { Faker::Lorem.word }
  let(:source_ip_address) { Faker::Internet.ip_v4_address }
  let(:idempotency_key) { Faker::Internet.hash }
  let(:api_version) { "1.0.0" }
  let(:api_base) { "https://localhost:8080" }
  let(:log_level) { :debug }
  let(:headers) do
    {
      "Content-Type" => "application/json",
      "Authorization" => "Bearer #{access_token}",
      "X-Api-Version" => api_version,
      "X-Merchant-Id" => merchant_id,
      "X-Source-Ip-Address" => source_ip_address
    }
  end

  describe "::originate_batch" do
    let(:path) { "/ach/batch" }
    let(:body) do
      {
        payments: [
          {
            account_number: "2714035231",
            receiver: {
              routing_number: "021000021",
              account_number: "456789000",
              account_type: "Checking",
              name: "Bob Smith",
              identification: "XYZ123"
            },
            sec_code: "WEB",
            description: "Payment",
            transaction_type: "Push",
            amount: 10_000,
            service_type: "SameDay",
            purpose: nil,
            client_identifier: nil
          },
          {
            account_number: "2714035231",
            receiver: {
              routing_number: "021000021",
              account_number: "123456789",
              account_type: "Checking",
              name: "Joe Jack",
              identification: "ABC123"
            },
            sec_code: "WEB",
            description: "Payment",
            transaction_type: "Push",
            amount: 22_000,
            service_type: "SameDay",
            purpose: nil,
            client_identifier: nil
          }
        ]
      }
    end

    context "when 200" do
      context "with global config" do
        before do
          Bckbn.access_token = access_token
          Bckbn.api_version = api_version
          Bckbn.api_base = api_base
          Bckbn.merchant_id = merchant_id
          Bckbn.source_ip_address = source_ip_address
          Bckbn.log_level = log_level

          stub_request(:post, api_base + path)
            .with(headers: headers, body: body.to_json)
            .to_return(
              body: fixture("ach/originate_batch_200.json"),
              status: 200
            )
        end

        it "returns response object" do
          res = Bckbn::Ach.originate_batch(body)

          expect(res).to be_a(Bckbn::Ach::BatchResponse)
          expect(res.id).to eq "93af7b91-b415-4933-b716-b0a1015eb5c6"
          expect(res.reference_id).to eq "CB29376RP3GT6"
          expect(res.status).to eq "Processing"
          expect(res.account_number).to eq "2654377916"
          expect(res.payment_count).to eq 2
          expect(res.debit_total).to eq 0
          expect(res.credit_total).to eq 58_333
          expect(res.import_count).to eq 0
          expect(res.product_id).to eq "bf695308-0f6c-40f3-ab53-afc700e18cb8"
          expect(res.partner_id).to eq "01a0e2da-173b-4620-a146-afc700e18573"
          expect(res.created_at).to eq "2023-10-20T17:16:53.7726387-04:00"
          expect(res.last_modified_at).to eq "2023-10-20T17:16:53.788318-04:00"
          expect(res.payment_identifiers).to be_a(Array)
        end
      end

      context "with per request config and idempotency_key" do
        let(:ik_headers) do
          headers.merge("X-Idempotency-Key" => idempotency_key)
        end

        before do
          Bckbn.api_version = api_version
          Bckbn.api_base = api_base

          stub_request(:post, api_base + path)
            .with(headers: ik_headers, body: body.to_json)
            .to_return(
              body: fixture("ach/originate_batch_200.json"),
              status: 200
            )
        end

        let(:config) do
          {
            access_token: access_token,
            merchant_id: merchant_id,
            source_ip_address: source_ip_address,
            log_level: log_level,
            idempotency_key: idempotency_key
          }
        end

        it "returns response object" do
          res = Bckbn::Ach.originate_batch(body, config)

          expect(res).to be_a(Bckbn::Ach::BatchResponse)
          expect(res.id).to eq "93af7b91-b415-4933-b716-b0a1015eb5c6"
          expect(res.reference_id).to eq "CB29376RP3GT6"
          expect(res.status).to eq "Processing"
          expect(res.account_number).to eq "2654377916"
          expect(res.payment_count).to eq 2
          expect(res.debit_total).to eq 0
          expect(res.credit_total).to eq 58_333
          expect(res.import_count).to eq 0
          expect(res.product_id).to eq "bf695308-0f6c-40f3-ab53-afc700e18cb8"
          expect(res.partner_id).to eq "01a0e2da-173b-4620-a146-afc700e18573"
          expect(res.created_at).to eq "2023-10-20T17:16:53.7726387-04:00"
          expect(res.last_modified_at).to eq "2023-10-20T17:16:53.788318-04:00"
          expect(res.payment_identifiers).to be_a(Array)
        end
      end
    end
  end

  describe "::get" do
    let(:batch_id) { "93af7b91-b415-4933-b716-b0a1015eb5c6" }
    let(:path) { "/ach/batch/#{batch_id}" }

    context "when 200" do
      context "with global config" do
        before do
          Bckbn.access_token = access_token
          Bckbn.api_version = api_version
          Bckbn.api_base = api_base
          Bckbn.merchant_id = merchant_id
          Bckbn.source_ip_address = source_ip_address
          Bckbn.log_level = log_level

          stub_request(:get, api_base + path)
            .with(headers: headers)
            .to_return(
              body: fixture("ach/originate_batch_200.json"),
              status: 200
            )
        end

        it "returns response object" do
          res = Bckbn::Ach.get_batch(batch_id)

          expect(res).to be_a(Bckbn::Ach::BatchResponse)
          expect(res.id).to eq "93af7b91-b415-4933-b716-b0a1015eb5c6"
          expect(res.reference_id).to eq "CB29376RP3GT6"
          expect(res.status).to eq "Processing"
          expect(res.account_number).to eq "2654377916"
          expect(res.payment_count).to eq 2
          expect(res.debit_total).to eq 0
          expect(res.credit_total).to eq 58_333
          expect(res.import_count).to eq 0
          expect(res.product_id).to eq "bf695308-0f6c-40f3-ab53-afc700e18cb8"
          expect(res.partner_id).to eq "01a0e2da-173b-4620-a146-afc700e18573"
          expect(res.created_at).to eq "2023-10-20T17:16:53.7726387-04:00"
          expect(res.last_modified_at).to eq "2023-10-20T17:16:53.788318-04:00"
          expect(res.payment_identifiers).to be_a(Array)
        end
      end

      context "with per request config and idempotency_key" do
        let(:ik_headers) do
          headers.merge("X-Idempotency-Key" => idempotency_key)
        end

        before do
          Bckbn.api_version = api_version
          Bckbn.api_base = api_base

          stub_request(:get, api_base + path)
            .with(headers: headers)
            .to_return(
              body: fixture("ach/originate_batch_200.json"),
              status: 200
            )
        end

        let(:config) do
          {
            access_token: access_token,
            merchant_id: merchant_id,
            source_ip_address: source_ip_address,
            log_level: log_level,
            idempotency_key: idempotency_key
          }
        end

        it "returns response object" do
          res = Bckbn::Ach.get_batch(batch_id, config)

          expect(res).to be_a(Bckbn::Ach::BatchResponse)
          expect(res.id).to eq "93af7b91-b415-4933-b716-b0a1015eb5c6"
          expect(res.reference_id).to eq "CB29376RP3GT6"
          expect(res.status).to eq "Processing"
          expect(res.account_number).to eq "2654377916"
          expect(res.payment_count).to eq 2
          expect(res.debit_total).to eq 0
          expect(res.credit_total).to eq 58_333
          expect(res.import_count).to eq 0
          expect(res.product_id).to eq "bf695308-0f6c-40f3-ab53-afc700e18cb8"
          expect(res.partner_id).to eq "01a0e2da-173b-4620-a146-afc700e18573"
          expect(res.created_at).to eq "2023-10-20T17:16:53.7726387-04:00"
          expect(res.last_modified_at).to eq "2023-10-20T17:16:53.788318-04:00"
          expect(res.payment_identifiers).to be_a(Array)
        end
      end
    end
  end

  describe "::cancel" do
    let(:batch_id) { "93af7b91-b415-4933-b716-b0a1015eb5c6" }
    let(:path) { "/ach/batch/#{batch_id}/cancel" }

    context "when 200" do
      context "with global config" do
        before do
          Bckbn.access_token = access_token
          Bckbn.api_version = api_version
          Bckbn.api_base = api_base
          Bckbn.merchant_id = merchant_id
          Bckbn.source_ip_address = source_ip_address
          Bckbn.log_level = log_level

          stub_request(:post, api_base + path)
            .with(headers: headers)
            .to_return(
              body: fixture("ach/originate_batch_200.json"),
              status: 200
            )
        end

        it "returns response object" do
          res = Bckbn::Ach.cancel_batch(batch_id)

          expect(res).to be_a(Bckbn::Ach::BatchResponse)
          expect(res.id).to eq "93af7b91-b415-4933-b716-b0a1015eb5c6"
          expect(res.reference_id).to eq "CB29376RP3GT6"
          expect(res.status).to eq "Processing"
          expect(res.account_number).to eq "2654377916"
          expect(res.payment_count).to eq 2
          expect(res.debit_total).to eq 0
          expect(res.credit_total).to eq 58_333
          expect(res.import_count).to eq 0
          expect(res.product_id).to eq "bf695308-0f6c-40f3-ab53-afc700e18cb8"
          expect(res.partner_id).to eq "01a0e2da-173b-4620-a146-afc700e18573"
          expect(res.created_at).to eq "2023-10-20T17:16:53.7726387-04:00"
          expect(res.last_modified_at).to eq "2023-10-20T17:16:53.788318-04:00"
          expect(res.payment_identifiers).to be_a(Array)
        end
      end

      context "with per request config and idempotency_key" do
        let(:ik_headers) do
          headers.merge("X-Idempotency-Key" => idempotency_key)
        end

        before do
          Bckbn.api_version = api_version
          Bckbn.api_base = api_base

          stub_request(:post, api_base + path)
            .with(headers: headers)
            .to_return(
              body: fixture("ach/originate_batch_200.json"),
              status: 200
            )
        end

        let(:config) do
          {
            access_token: access_token,
            merchant_id: merchant_id,
            source_ip_address: source_ip_address,
            log_level: log_level,
            idempotency_key: idempotency_key
          }
        end

        it "returns response object" do
          res = Bckbn::Ach.cancel_batch(batch_id, config)

          expect(res).to be_a(Bckbn::Ach::BatchResponse)
          expect(res.id).to eq "93af7b91-b415-4933-b716-b0a1015eb5c6"
          expect(res.reference_id).to eq "CB29376RP3GT6"
          expect(res.status).to eq "Processing"
          expect(res.account_number).to eq "2654377916"
          expect(res.payment_count).to eq 2
          expect(res.debit_total).to eq 0
          expect(res.credit_total).to eq 58_333
          expect(res.import_count).to eq 0
          expect(res.product_id).to eq "bf695308-0f6c-40f3-ab53-afc700e18cb8"
          expect(res.partner_id).to eq "01a0e2da-173b-4620-a146-afc700e18573"
          expect(res.created_at).to eq "2023-10-20T17:16:53.7726387-04:00"
          expect(res.last_modified_at).to eq "2023-10-20T17:16:53.788318-04:00"
          expect(res.payment_identifiers).to be_a(Array)
        end
      end
    end
  end
end
