class FavouritesController < ApplicationController
  def index
  end
  def create
    @products = Product.all
    @favourites = Favourite.create(product_id: Product.find_by(params[:id]),  customer_id: Customer.find_by(params[:id]))
    end
  def new
  end
  def show
  end
end
