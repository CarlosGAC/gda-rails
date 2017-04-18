class Assistance < ActiveRecord::Base
  has_one :service
  accepts_nested_attributes_for :service

  def self.today()
  	Assistance.joins(:service).where(services: {date: Date.today})
  end
end
