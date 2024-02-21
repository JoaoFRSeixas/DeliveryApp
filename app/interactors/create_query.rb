# frozen_string_literal: true

class CreateQuery
  include Interactor

  def call
    context.query = Query.new(context.params)
    context.save! unless context.fail!
  end

  private

  def request_availability
    context.id
  end
end
