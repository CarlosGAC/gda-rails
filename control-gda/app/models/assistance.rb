class Assistance < ActiveRecord::Base
  has_one :service

  def self.today()
  	Assistance.joins(:service).where(services: {date: Date.today})
  end
end
