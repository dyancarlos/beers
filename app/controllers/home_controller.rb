class HomeController < ApplicationController
  
  before_filter :logged_in
  
  def index
    @mybeers = MyBeer.where(["user_id = ?", current_user.uid])
  end
end
