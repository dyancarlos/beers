class Beer < ActiveRecord::Base
  has_many :my_beers  
  attr_accessible :name

  def self.search(search)
    if search
      where(["name LIKE ?", "%#{search}%"])
    else
      all
    end
  end

end
