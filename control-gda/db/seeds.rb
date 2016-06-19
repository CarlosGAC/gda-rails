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
