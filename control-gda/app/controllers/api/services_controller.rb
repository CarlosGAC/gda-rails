class Api::ServicesController < ApplicationController
  before_action :doorkeeper_authorize!

  def index
    @services = Service.all
  end

end
