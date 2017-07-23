class Service < ActiveRecord::Base
  belongs_to :truck
  belongs_to :operator
  belongs_to :assistance
  belongs_to :inventory

  def self.today()
  	where(date: Date.today)
  end
end
