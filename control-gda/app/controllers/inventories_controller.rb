class InventoriesController < ApplicationController
  before_action :set_inventory, only: [:show, :edit, :update, :destroy]

  # GET /inventories
  # GET /inventories.json
  def index
    @inventories =  Inventory.all
    @q = Inventory.search(params[:q])
    @inventory = @q.result.includes(:service)
  end

  # GET /inventories/1
  # GET /inventories/1.json
  def show
  end

  # GET /inventories/new
  def new
    @inventory = Inventory.new
    @inventory.build_service
  end

  # GET /inventories/1/edit
  def edit
  end

  # POST /inventories
  # POST /inventories.json
  def create
    @inventory = Inventory.new(inventory_params)
    Rails.logger.debug("My object: #{@inventory.number} == #{@inventory.inspect}")
    Rails.logger.debug("My object2: #{}")
    if @inventory.save
      flash[:notice] = "Inventario creado satisfactoriamente"
      redirect_to @inventory
    else
      render :new, error: "Error: El operador no pudo crearse satisfactoriamente"
    end
  end

  # PATCH/PUT /inventories/1
  # PATCH/PUT /inventories/1.json
  def update
    @inventory = Inventory.find(params[:id])
    if @inventory.update(inventory_params)
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
      params.require(:inventory).permit(
      :authority,
      :serial,
      :maneuver,
      :service_type,
      :number,
      :departure_place,
      :sinister_place,
      :driver_name,
      :service_id,
      :service_attributes => [
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
          :assistance_id
      ])
    end
end
