class HomeController < ApplicationController
  
  before_filter :logged_in
  
  def index
    @beers = Beer.all
    @mybeers = MyBeer.all
  end
end
