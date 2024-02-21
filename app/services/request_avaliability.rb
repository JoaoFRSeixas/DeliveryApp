# frozen_string_literal: true

require 'httparty'

module RequestAvaliability # rubocop:disable Style/Documentation
  extend self

  attr_accessor :query

  BASE_URL = 'https://api.xandar.instaleap.io/jobs/availability/v2'
  API_KEY = ''


  def call(query)
    fetch_availability
  end

  private

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
