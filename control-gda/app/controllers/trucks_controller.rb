class TrucksController < ApplicationController
  def index
    @trucks = Truck.all
  end

  def new
    @truck = Truck.new
  end

  def create
    @truck = Truck.new(number: params[:truck][:number], classification: params[:classification], description: params[:truck][:description])
    if @truck.save
      redirect_to trucks_url, notice: "Grua guardada satisfactoriamente"
    else
      render :new, error: "Eror: No se pudo guardar la grua satisfactoriamente"
    end
  end

  def edit
    @truck = Truck.find(params[:id])
  end

  def update
    @truck = Truck.find(params[:id])
    if @truck.update(number: params[:truck][:number], classification: params[:classification], description: params[:truck][:description])
      redirect_to trucks_url, notice: "Grua editada satisfactoriamente"
    else
      render :edit, error: "Error: La grua no se pudo editar satisfactoriamente"
    end
  end

end
