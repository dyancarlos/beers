class HomeController < ApplicationController
  
  def login
    respond_to do |format|
      format.html {render :layout => "login"}
    end
  end
  
  def index
    @beers = Beer.all
    @mybeers = MyBeer.where(["user_id = ?", current_user.uid])
  end
end
