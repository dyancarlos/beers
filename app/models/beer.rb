class Beer < ActiveRecord::Base
  has_many :my_beers
  
  attr_accessible :name
end
