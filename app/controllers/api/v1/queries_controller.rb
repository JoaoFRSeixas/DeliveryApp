# frozen_string_literal: true
class Api::V1::QueriesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @query = Query.all
    render json: @query
  end

  def create
    result = Query.new(query_params)

    render json: result, status: :created if result.save

  end

  def show; end

  def destroy; end

  def check_availability
    query = Query.last
    @availability = ::RequestAvaliability.call(query)

    render json: @availability
  end

  def create_job
    query = Query.last

    @new_job = ::CreateJob.call(query)

    render json: @new_job
  end

  def query_job
    @job = ::GetJob.call

    render json: @job
  end

  def create_invoice
    query = Query.last

    @job = ::GetCreateInvoiceJob.call(query) #must be job

    render json: @job
  end

  private

  def query_params
    params.require(:query).permit(:currency_code)
  end

  def job_params
    params.require(:job_params).permit(:id)
  end

  def invoice_params
    params.require(:invoice_params).permit(:id)
  end
end
