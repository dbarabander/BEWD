class ShirtsController < ApplicationController
  def index
    @shirts = Shirt.search_for(params[:q])
  end

  def show
    @shirt = Shirt.find_by id: params[:id]
  end
end
