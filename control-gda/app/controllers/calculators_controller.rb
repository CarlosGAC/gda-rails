class CalculatorsController < ApplicationController
  def index
    @routes = Route.all
    @prices = Price.all
  end

end
