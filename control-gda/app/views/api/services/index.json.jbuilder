json.services @services do |service|
  json.id service.id
  json.date service.date
  json.hour service.hour
  json.cliente service.client
  json.ubication service.ubication
  json.destiny service.destiny
  json.inventary_num service.inventary_num
  json.keys_num service.keys_num
  json.brand service.brand
  json.car_type service.car_type
  json.color service.color
  json.licence_plates service.licence_plates
  json.model service.model
end
