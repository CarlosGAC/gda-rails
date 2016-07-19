# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
operators_list = [
  "Armando",
  "Ruben",
  "Abel",
  "David"
]

operators_list.each do |name|
  Operator.create( name: name)
end

trucks_list = [
  ["1", "A", "Plataforma"],
  ["2", "B", "Tiron"],
  ["3", "C", "Tiron"],
  ["4", "A", "Servicio de taxi"],
]

trucks_list.each do |number, classification, description|
  Truck.create(number: number, classification: classification, description: description)
end

service_list = [
  ["2016-07-19","2000-01-01 23:12:00","Usuario","Colima","Guadalajara","1234","19","Chevrolet","Aveo","Rojo","JBC2180","2012", 3, 1],
  ["2016-05-02","2000-01-01 02:15:00","PGR","Ciudad Guzman","Autlan","2534","1","Ford","Focus","Rojo","JAD2121","2005", 1, 2],
  ["2016-05-02","2000-01-01 02:15:00","PGR","Autlan","Zapotiltic","2534","1","Ford","Focus","Rojo","JAD2121","2005", 1, 2]
]

service_list.each do |date, hour, client, ubication, destiny, inventary_num, keys_num, brand, car_type, color, licence_plates, model, operator_id, truck_id|
  Service.create(date: date, hour: hour, client: client, ubication: ubication, destiny: destiny, inventary_num: inventary_num, keys_num: keys_num, brand: brand, car_type: car_type, color: color, licence_plates: licence_plates, model: model, operator_id: operator_id, truck_id: truck_id)
end

#t.date :date
#t.time :hour
#t.string :client
#t.string :ubication
#t.string :destiny
#t.string :inventary_num
#t.string :keys_num
#t.string :brand
#t.string :car_type
#t.string :color
#t.string :licence_plates
#t.string :model
