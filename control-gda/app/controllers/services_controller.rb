class ServicesController < ApplicationController
  def index
    @q = Service.search(params[:q])
    if params[:commit]
      @service = @q.result.includes(:assistance, :truck, :operator)
    else
      @service = Service.today
    end
  end

  def new
    @service = Service.new
    @operators = Operator.all
    @trucks = Truck.all
  end

  def create

    @service = Service.new(service_params)
    if @service.save
      flash[:notice] = "Servicio creado satisfactoriamente"
      redirect_to @service
    end


  end

  def show
    @service = Service.find(params[:id])
  end

  def edit
    @service = Service.find(params[:id])
    @operators = Operator.all
    @trucks = Truck.all
  end

  def update
    @service = Service.find(params[:id])
    if @service.update(service_params)
      redirect_to @service, edit: "Servicio editado safistactoriamente"
    else
      render :edit, error: "Error: El servicio no se pudo editar satisfactoriamente"
    end
  end

  def destroy
    @service = Service.find(params[:id])
    @service.destroy

    redirect_to services_url
  end

  private

  def service_params
    params.require(:service).permit(
      :id,
      :date,
      :hour,
      :client,
      :ubication,
      :destiny,
      :operator,
      :truck,
      :inventary_num,
      :brand,
      :car_type,
      :model,
      :color,
      :licence_plates,
      :keys_num,
      :operator_id,
      :truck_id,
      :assistance_id)
  end
end
