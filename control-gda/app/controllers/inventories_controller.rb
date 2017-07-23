class InventoriesController < ApplicationController
  before_action :set_inventory, only: [:show, :edit, :update, :destroy]

  # GET /inventories
  # GET /inventories.json
  def index
    @inventories = Inventory.all
  end

  # GET /inventories/1
  # GET /inventories/1.json
  def show
  end

  # GET /inventories/new
  def new
    @inventory = Inventory.new
  end

  # GET /inventories/1/edit
  def edit
  end

  # POST /inventories
  # POST /inventories.json
  def create
    @inventory = Inventory.new(
    authority: params[:inventory][:authority],
    serial: params[:inventory][:serial],
    maneuver: params[:inventory][:maneuver],
    service_type: params[:inventory][:service_type],
    number: params[:inventory][:number],
    departure_place: params[:inventory][:departure_place],
    sinister_place: params[:inventory][:sinister_place],
    driver_name: params[:inventory][:driver_name]
    )
    if @inventory.save
      flash[:notice] = "Inventario creado satisfactoriamente"
      redirect_to @inventory
    end
  end

  # PATCH/PUT /inventories/1
  # PATCH/PUT /inventories/1.json
  def update
    @inventory = Inventory.find(params[:id])
    if @inventory.update(
      authority: params[:inventory][:authority],
      serial: params[:inventory][:serial],
      maneuver: params[:inventory][:maneuver],
      service_type: params[:inventory][:service_type],
      number: params[:inventory][:number],
      departure_place: params[:inventory][:departure_place],
      sinister_place: params[:inventory][:sinister_place],
      driver_name: params[:inventory][:driver_name]
      )
      redirect_to @inventory, edit: "Inventario editado safistactoriamente"
    else
      render :edit, error: "Error: El inventario no se pudo editar satisfactoriamente"
    end
  end

  # DELETE /inventories/1
  # DELETE /inventories/1.json
  def destroy
    @inventory.destroy
    respond_to do |format|
      format.html { redirect_to inventories_url, notice: 'Inventory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inventory
      @inventory = Inventory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inventory_params
      params.require(:inventory).permit(:authority, :serial, :maneuver, :service_type, :number, :departure_place, :sinister_place, :driver_name)
    end
end
