class Truck < ActiveRecord::Base
  has_many :services
  validates :number, presence: {message: "no puede quedar en blanco"}
end
