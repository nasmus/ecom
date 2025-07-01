class HomeController < ApplicationController
  def index
    @categories = Category.all
    @products = Product.where(active: true).order(created_at: :desc).limit(8)
  end
   
end
