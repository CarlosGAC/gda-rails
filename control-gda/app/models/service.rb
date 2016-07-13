class Service < ActiveRecord::Base
  belongs_to :truck
  belongs_to :operator
end
