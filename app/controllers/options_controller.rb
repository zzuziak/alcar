class OptionsController < ApplicationController
  before_action :set_category, only: [:new, :create]
  before_action :set_product, only: [:new, :create]

  def new
    @option = Option.new
  end

  def create
    @user = current_user
    @option = Option.new(option_params)
    @option.product = @product
    # @option.product =
    if @option.save
      redirect_to category_product_path(@category, @product)
    else
      render :new
    end
  end

  private

  def option_params
    params.require(:option).permit(:name, :description, :photo, )
  end

  def set_product
    @product = Product.find(params[:product_id])
  end

  def set_category
    @category = Category.find(params[:category_id])
  end

  def set_option
    @option = Option.find(params[:id])
  end
end
