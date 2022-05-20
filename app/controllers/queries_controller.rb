class QueriesController < ApplicationController
  def create
    @query = Query.new(params[:name])
    @query.save if params[name].strip.length > 2
  end
end
