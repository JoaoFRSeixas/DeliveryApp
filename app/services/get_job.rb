# frozen_string_literal: true

require 'httparty'
module GetJob
   # rubocop:disable Metrics/ClassLength,Style/Documentation
   extend self

   attr_accessor :job

  def call(job)
    return get_job.errors unless get_job.code != 200
    get_job
  end

  private

  def get_job
    @get_job = HTTParty.get( "https://api.xandar.instaleap.io/jobs/#{job.id}", headers)
  end

  def headers
    @headers = { "x-api-key": 'API_KEY' }
  end