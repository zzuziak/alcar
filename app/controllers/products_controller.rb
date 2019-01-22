class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  before_action :set_category, only: [:index, :new, :create, :edit, :update, :destroy]

  def index
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
    authorize @product
  end

  def create
    # @user = current_user
    @product = Product.new(product_params)
    authorize @product
    @product.category = @category
    if @product.save!
      redirect_to category_path(@category)
    else
      render :new
    end
  end

  def edit
    authorize @product
  end

  def update
    authorize @product
    if @product.update(product_params)
      redirect_to category_path(@category)
    else
      render :edit
    end
  end

  def destroy
    authorize @product
    @product.destroy
    redirect_to category_path(@category)
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
