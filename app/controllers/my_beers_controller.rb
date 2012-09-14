class MyBeersController < ApplicationController

  def add
    my_beer = MyBeer.new(:user_id => params[:user_id], :beer_id => params[:beer_id])
    if my_beer.save
      redirect_to root_path
    end
  end

end
