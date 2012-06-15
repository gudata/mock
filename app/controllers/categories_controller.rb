class CategoriesController < ApplicationController
  protect_from_forgery
  
  def homepage
    category = Category.first
    redirect_to category_path(category)
  end
  
  def show
    @category = Category.find(params[:id] )
    @categories = Category.includes(:comments).all
  end
  
  # TODO
  # Need global rescue for record not found
end
