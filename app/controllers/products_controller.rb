class ProductsController < ApplicationController

  def index
    @category = Category.find(params[:category_id])
  end

  def show
    @product = Product.find(params[:id])
  end
end
