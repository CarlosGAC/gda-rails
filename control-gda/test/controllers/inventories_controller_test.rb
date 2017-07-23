require 'test_helper'

class InventoriesControllerTest < ActionController::TestCase
  setup do
    @inventory = inventories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:inventories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create inventory" do
    assert_difference('Inventory.count') do
      post :create, inventory: { authority: @inventory.authority, departure_place: @inventory.departure_place, driver_name: @inventory.driver_name, maneuver: @inventory.maneuver, number: @inventory.number, serial: @inventory.serial, service_type: @inventory.service_type, sinister_place: @inventory.sinister_place }
    end

    assert_redirected_to inventory_path(assigns(:inventory))
  end

  test "should show inventory" do
    get :show, id: @inventory
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @inventory
    assert_response :success
  end

  test "should update inventory" do
    patch :update, id: @inventory, inventory: { authority: @inventory.authority, departure_place: @inventory.departure_place, driver_name: @inventory.driver_name, maneuver: @inventory.maneuver, number: @inventory.number, serial: @inventory.serial, service_type: @inventory.service_type, sinister_place: @inventory.sinister_place }
    assert_redirected_to inventory_path(assigns(:inventory))
  end

  test "should destroy inventory" do
    assert_difference('Inventory.count', -1) do
      delete :destroy, id: @inventory
    end

    assert_redirected_to inventories_path
  end
end
