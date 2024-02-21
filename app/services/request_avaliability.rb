# frozen_string_literal: true

require 'httparty'

module RequestAvaliability# rubocop:disable Style/Documentation
  extend self

  attr_accessor :query

  BASE_URL = 'https://api.xandar.instaleap.io/jobs/availability/v2'
  API_KEY = ''


  def call(query)
    #API key is not available now, so I will use a response exampĺe to render

    #fetch_availability
    
    response_example
  end

  private

  def response_example # rubocop:disable Metrics/MethodLength
    @response_example = [
      {
        "id": "your_first_slot_id",
        "from": "2024-02-20T20:35:52.575Z",
        "to": "2024-02-20T20:35:52.575Z",
        "store": {
          "id": "string",
          "name": "string"
        },
        "description": "string",
        "operational_model": "PICK_AND_DELIVERY",
        "expires_at": "2024-02-20T20:35:52.575Z"
      },
      {
        "id": "your_second_slot_id",
        "from": "2024-02-20T20:35:52.575Z",
        "to": "2024-02-20T20:35:52.575Z",
        "store": {
          "id": "string",
          "name": "string"
        },
        "description": "string",
        "operational_model": "PICK_AND_COLLECT",
        "expires_at": "2024-02-20T20:35:52.575Z"
      }
    ]
  end

  def fetch_availability
    HTTParty.post(BASE_URL, headers: headers, body: body.to_json)
  end

  def headers
    @headers = { "x-api-key": API_KEY }
  end

  def body # rubocop:disable Metrics/MethodLength
    @body = {
      origin: {
        name: 'string',
        address: 'string',
        latitude: 'number',
        longitude: 'number'
      },
      destination: {
        name: 'string',
        address: 'string',
        latitude: 'number',
        longitude: 'number'
      },
      currency_code: 'string',
      start: 'date',
      end: 'date',
      slot_size: 'number',
      operational_models_priority: %w[
        PICK_AND_DELIVERY
        PICK_AND_COLLECT
        ZONE_PICKING_AND_DELIVERY_WITH_STORAGE
      ],
      store_reference: 'string',
      job_items: [
        {
          attributes: {
            category: 'string',
            location: 'srting',
            picking_index: 'string'
          },
          id: 'string',
          name: 'string',
          unit: 'string',
          sub_unit: 'string',
          quantity: 'number',
          sub_quantity: 'number',
          price: 'numer'
        }
      ]
    }
  end
end
