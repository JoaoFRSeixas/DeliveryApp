# frozen_string_literal: true
class Api::V1::QueriesController < ApplicationController
  def index
    result = CreateQuery.call(params: query_params)

    if result.success?
      redirect_to result.query, notice: 'Success!'
    else
      @query = result.query
      render :new
    end
  end

  def create
  end

  def show
  end

  def destroy
  end
end
