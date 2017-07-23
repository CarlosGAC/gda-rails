json.array!(@inventories) do |inventory|
  json.extract! inventory, :id, :authority, :serial, :maneuver, :service_type, :number, :departure_place, :sinister_place, :driver_name
  json.url inventory_url(inventory, format: :json)
end
