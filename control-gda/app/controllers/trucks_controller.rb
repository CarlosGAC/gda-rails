class TrucksController < ApplicationController
  def index
    @trucks = Truck.all
  end

  def new
    @truck = Truck.new
  end

  def create
    @truck = Truck.new(number: params[:truck][:number], classification: params[:classification], description: params[:description])

    @truck.save
    redirect_to trucks_url

  end
end
