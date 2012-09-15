class MyBeersController < ApplicationController

  before_filter :logged_in

  def add
    my_beer = MyBeer.new(:user_id => params[:user_id], :beer_id => params[:beer_id])
    if my_beer.save
      redirect_to root_path
    end
  end
  
  def destroy
    get_my_beer = MyBeer.find(params[:id])
    get_my_beer.destroy
    redirect_to root_path
  end

end
