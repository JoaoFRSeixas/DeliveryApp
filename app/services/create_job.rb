# frozen_string_literal: true

require 'httparty'
module CreateJob # rubocop:disable Metrics/ClassLength,Style/Documentation
  extend self

  attr_accessor :query

  def call(query)
    return request_job.errors unless request_job.code != 200
    job = Job.new(request_job)
    job.save
  end

  private

  def response_example
    @response_example =
    {
      "message": "string",
      "job_id": "string"
    }
  end

  def request_job
    @request_job = HTTParty.post( 'https://api.xandar.instaleap.io/jobs', headers:, body: body.to_json)
  end

  def headers
    @headers = { "x-api-key": 'API_KEY' }
  end

  def body # rubocop:disable Metrics/MethodLength
    @body = {
      "slot_id": 'string',
      "client_reference": "string",
      "recipient": {
        "name": "string",
        "email": 'string',
        "phone_number": "string",
        "identification": {
          "number": "string",
          "type": "string"
        }
      },
      "payment_info": {
        "currency_code": "string",
        "prices": {
          "order_value": 0,
          "shipping_fee": 0,
          "taxes": 0,
          "discounts": 0,
          "subtotal": 0,
          "attributes": [
            {
              "type": "ORDER_VALUE",
              "name": "payment",
              "value": 45000
            },
            {
              "type": "ORDER_VALUE",
              "name": "other",
              "value": 450
            }
          ],
          "additional_info": [
          {
            "type": "adjustment",
            "name": "Reembolso",
            "value": "-5000"
          },
          {
            "type": "original_order_value",
            "name": "Valor Original",
            "value": "45000"
          }
        ]
        },
        "payment": {
          "id": "string",
          "payment_status": "string",
          "payment_status_details": "string",
          "method_details": "string",
          "blocking_policy": "string",
          "method": "string",
          "reference": "string",
          "value": 0,
          "metadata": {
            "transaction": [
              {
                "type": "CHARGE",
                "status": "COMPLETED",
                "amount_currency_code": "MXN",
                "amount_value": 18.9,
                "created_at": "2022-02-07T23:24:44Z"
              }
            ]
          }
        }
      },
      "add_delivery_code": true,
      "pick_up_code":"string",  
      "round_trip_info": {
        "enabled": true,
        "reason": "any"
      },
      "curbside": false,
      "job_comment": "string",
      "contact_less": {
        "comment": "string",
        "cash_receiver": "string",
        "phone_number": "string"
      },
      "external_data": {
        "webhook": {
          "key": "string",
          "URL": "string"
        },
        "backoffice": {
          "key": "string",
          "URL": "string"
        },
        "shopper_app": {
          "key": "string",
          "URL": "string"
        }
      }
    }
  end
end

