class Inventory < ActiveRecord::Base
  has_one :service
  accepts_nested_attributes_for :service
end
