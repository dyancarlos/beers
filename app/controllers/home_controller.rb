class HomeController < ApplicationController
  
  before_filter :logged_in
  
  def index
    @mybeers = MyBeer.all
  end
end
