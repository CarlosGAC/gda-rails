class OperatorsController < ApplicationController
  def index
    @operators = Operator.all
  end
end
