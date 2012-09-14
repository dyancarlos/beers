class MyBeer < ActiveRecord::Base
  belongs_to :beer
  
  attr_accessible :user_id, :beer_id
end
