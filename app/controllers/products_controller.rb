class ProductsController < ApplicationController
  def show
    @products = Product.all
  end
  def fav
    @heart += 1
  end
end
