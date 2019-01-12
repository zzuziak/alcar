class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update]
  before_action :set_category, only: [:index, :new, :create, :edit, :update]

  def index
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    # @user = current_user
    @product = Product.new(product_params)
    @product.category = @category
    if @product.save!
      redirect_to category_path(@category)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @product.update(product_params)
      redirect_to category_path(@category)
    else
      render :edit
    end
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :description)
  end


  def set_category
    @category = Category.find(params[:category_id])
  end
end
