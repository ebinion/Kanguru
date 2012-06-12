class Transportation < ActiveRecord::Base
  attr_accessible :condition, :image, :name
  
  has_many :conditional_items
end
