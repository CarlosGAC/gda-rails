class Assistance < ActiveRecord::Base
  has_one :service
  # TO BE FIXED
  #def self.today
  	#where('created_at == ?', Date.today)
  #end
end
