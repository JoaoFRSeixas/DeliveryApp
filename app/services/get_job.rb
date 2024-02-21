# frozen_string_literal: true

require 'httparty'
module GetJob # rubocop:disable Metrics/ClassLength,Style/Documentation
  extend self


  def call
    # return get_job.errors unless get_job.code != 200
    # get_job
    response_example
  end


  def response_example
    @response_example = {
      "job_number": "string",
      "client_id": "string",
      "start_time": "2024-02-21T13:27:59.884Z",
      "end_time": "2024-02-21T13:27:59.884Z",
      "state": "string",
      "origin": {
        "name": "string",
        "address": "string",
        "address_two": "string",
        "country": "string",
        "state": "string",
        "city": "string",
        "zip_code": "string",
        "description": "string",
        "coordinates": {
          "lat": 0,
          "lng": 0
        }
      },
      "destination": {
        "name": "string",
        "address": "string",
        "address_two": "string",
        "country": "string",
        "state": "string",
        "city": "string",
        "zip_code": "string",
        "description": "string",
        "coordinates": {
          "lat": 0,
          "lng": 0
        }
      },
      "total_items": 0,
      "items_replaced": 0,
      "products_cost": {
        "amount": 0,
        "currency_code": "string"
      },
      "items": [
        {
          "id": "string",
          "state": "string",
          "name": "string",
          "package_id": "string",
          "quantity": 0,
          "found_quantity": 0,
          "photo_url": "string",
          "presentation": {
            "quantity": 0,
            "unit": "string",
            "name": "string",
            "price": {
              "amount": 0,
              "currency_code": "string"
            },
            "weight": 0,
            "dimensions": [
              {
                "length": 0,
                "width": 0,
                "height": 0
              }
            ]
          },
          "attributes": {
            "category": "string",
            "another attributes": "string"
          },
          "origin": "string",
          "comment": "string",
          "is_substitute": true,
          "replaced_by": "string"
        }
      ],
      "collect_with": {
        "method": "string",
        "payment": {
          "amount": 0,
          "currency": "string"
        }
      },
      "recipient": {
        "name": "string",
        "email": "string",
        "phone_number": 0
      },
      "tasks": {
        "id": "string",
        "type": "string",
        "state": "string",
        "resource": "string",
        "payment": "string",
        "steps": [
          {
            "id": "string",
            "state": "string",
            "type": "string"
          }
        ]
      },
      "can_process_checkout": true,
      "delivery_options": [
      ],
      "job_comment": "string",
      "external_data": {
        "webhook": {
          "key": "string"
        },
        "backoffice": {
          "key": "string"
        }
      }
    }
  end
private
  def get_job
    @get_job = HTTParty.get( "https://api.xandar.instaleap.io/jobs/#{job.id}", headers)
  end

  def headers
    @headers = { "x-api-key": 'API_KEY' }
  end
end