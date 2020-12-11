class CategoryController < ApplicationController
  def show
    @categories = Category.all
  end
end
