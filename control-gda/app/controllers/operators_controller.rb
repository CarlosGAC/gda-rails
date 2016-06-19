class OperatorsController < ApplicationController
  def index
    @operators = Operator.all
  end

  def new
    @operator = Operator.new
  end

  def create
    @operator = Operator.new(name: params[:operator][:name])

    @operator.save
    redirect_to operators_url

  end
end
