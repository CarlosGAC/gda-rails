class Inventory < ActiveRecord::Base
  has_one :service
  validates :number, presence: {message: "El numero de expediente no puede quedar vacío"}
  #validates :number, uniqueness: {message: "El numero de expediente ya existe"}
  accepts_nested_attributes_for :service
end
