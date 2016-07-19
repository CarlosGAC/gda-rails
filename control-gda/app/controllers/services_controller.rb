class ServicesController < ApplicationController
  def index
    @services = Service.all
  end

  def new
    @service = Service.new
    @operators = Operator.all
    @trucks = Truck.all
  end

  def create

    @service = Service.new(
      date: params[:service][:date],
      hour: params[:service][:hour],
      client: params[:service][:client],
      ubication: params[:service][:ubication],
      destiny: params[:service][:destiny],
      operator_id: params[:operator],
      truck_id: params[:truck],
      inventary_num: params[:service][:inventary_num],
      brand: params[:service][:brand],
      car_type: params[:service][:car_type],
      model: params[:service][:model],
      color: params[:service][:color],
      licence_plates: params[:service][:licence_plates],
      keys_num: params[:service][:keys_num]
    )
    @service.save

    redirect_to services_url

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
      redirect_to @service
    else
      render :edit
    end
  end

  def destroy
    @service = Service.find(params[:id])
    @service.destroy

    redirect_to services_url
  end


  def service_params
    params.require(:service).permit(:date,:hour,:client,:ubication,:destiny,:operator_id,:truck_id,:inventary_num,:brand,:car_type,:model,:color,:licence_plates,:keys_num)
  end
end
