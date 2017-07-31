class Operator < ActiveRecord::Base
  has_many :services
  validates :name, presence: {message: " no puede quedar vacio"}
  validates :lastname, presence: {message: " no puede quedar vacio"}
end
