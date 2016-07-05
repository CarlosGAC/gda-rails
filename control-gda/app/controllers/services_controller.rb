class ServicesController < ApplicationController
  def index
    @services = Service.all
  end

  def new
    @service = Service.new
  end

  def create
    @service = Service.new(
      date: params[:service][:date],
      hour: params[:service][:hour],
      client: params[:service][:client],
      ubication: params[:service][:ubication],
      destiny: params[:service][:destiny],
      inventary_num: params[:service][:inventary_num],
      keys_num: params[:service][:keys_num]
    )
    @service.save
    redirect_to services_url

  end
end
