# frozen_string_literal: true

require 'httparty'
module CreateJob # rubocop:disable Metrics/ClassLength,Style/Documentation
  extend self

  attr_accessor :job

  def call(job)
    return create_invoice.errors unless create_invoice.code != 200
    create_invoice
  end

  private

  def response_example
    @response_example = {
      "currencyCode": "string",
      "prices": {
        "subtotal": 0,
        "shippingFee": 0,
        "discounts": 0,
        "taxes": 0,
        "order_value": 0,
        "attributes": [
          {
            "type": "ORDER_VALUE",
            "name": "string",
            "value": 0
          },
          {
            "type": "string",
            "name": "string",
            "value": 0
          },
          {
            "type": "string",
            "name": "string",
            "value": 0
          },
          {
            "type": "string",
            "name": "string",
            "value": 0
          },
          {
            "type": "string",
            "name": "string",
            "value": 0
          }
        ]
      },
      "payment": {
        "id": "string",
        "payment_status": "FAILED",
        "method": "CASH",
        "reference": "string",
        "value": 0,
        "payment_status_details": "string",
        "method_details": "string",
        "blocking_policy": "CHECKOUT",
        "metadata": {}
      },
      "invoice": {
        "reference": "string",
        "attachments": [
          "string"
        ]
      }
    }
  end

  def create_invoice
    @request_job = HTTParty.put("https://api.xandar.instaleap.io/jobs/#{jobId}/payment_info", headers:, body: body.to_json)
  end

  def headers
    @headers = { "x-api-key": 'API_KEY' }
  end

  def body # rubocop:disable Metrics/MethodLength
    @body = {
      "prices": {
        "subtotal": 0,
        "shipping_fee": 0,
        "discounts": 0,
        "taxes": 0,
        "order_value": 0,
        "attributes": [
          {
            "type": "SUBTOTAL",
            "name": "Total",
            "value": 0
          }
        ]
      },
      "payment": {
        "payment_status": "IN_PROGRESS",
        "method": "PAYMENT_LINK",
        "metadata": {
          "newKey": "New Value"
        },
        "id": "id",
        "reference": "reference",
        "value": 0
      },
      "invoice": {
        "reference": "reference",
        "attachments": [
          "url"
        ]
      }
    }

  end
end

