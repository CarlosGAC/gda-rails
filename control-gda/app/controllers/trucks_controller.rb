class TrucksController < ApplicationController
  def index
    @trucks = Truck.all
  end

  def new
    @truck = Truck.new
  end

  def create
    @truck = Truck.new(truck_params)
    if @truck.save
      redirect_to trucks_url, notice: "Grua guardada satisfactoriamente"
    else
      render :new, error: "Error: No se pudo guardar la grua satisfactoriamente"
    end
  end

  def edit
    @truck = Truck.find(params[:id])
  end

  def update
    @truck = Truck.find(params[:id])
    if @truck.update(truck_params)
      redirect_to trucks_url, notice: "Grua editada satisfactoriamente"
    else
      render :edit, error: "Error: La grua no se pudo editar satisfactoriamente"
    end
  end

  private

  def truck_params
    params.require(:truck).permit(
        :classification,
        :number,
        :description)
  end

end
