class Service < ActiveRecord::Base
  belongs_to :truck
  belongs_to :operator
  belongs_to :assistance
  
  def self.today()
  	where('date == ?', Date.today)
  end
end
