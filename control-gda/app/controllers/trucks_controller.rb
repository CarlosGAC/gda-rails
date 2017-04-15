class TrucksController < ApplicationController
  def index
    @trucks = Truck.all
  end

  def new
    @truck = Truck.new
  end

  def create
    @truck = Truck.new(number: params[:truck][:number], classification: params[:classification], description: params[:description])

    if @truck.save
      redirect_to trucks_url, notice: "Grua guardada satisfactoriamente"
    else
      render :new, error: "Eror: No se pudo guardar la grua satisfactoriamente"
    end
  end
end
