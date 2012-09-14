class BeersController < ApplicationController

  def new
    @beer = Beer.new
  end
  
  def create
    @beer = Beer.new(params[:beer])
    if @beer.save
      redirect_to new_beer_path
    end
  end

end
