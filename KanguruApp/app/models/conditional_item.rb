class ConditionalItem < ActiveRecord::Base
  attr_accessible :transportation_id, :image, :name
  
  belongs_to :transportation
end
