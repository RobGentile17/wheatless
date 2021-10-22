class SideDishesController < ApplicationController

  def index 
    @side_dishs = SideDish.all 
  end

  def show 
    @side_dish = SideDish.find(params[:id])
  end
end
