class Assistance < ActiveRecord::Base
  has_one :service

  def self.today()
  	Assistance.joins(:service).where(services: {date: Date.today})
  end
  # TO BE FIXED
  #def self.today
  	#where('created_at == ?', Date.today)
  #end
end
