class OptionsController < ApplicationController

  def new
    @option = Option.new
  end

  def create
    @user = current_user
    @option = Option.new(option_params)
    # @option.product = 
    if @option.save
      redirect_to product_path(@option.product)
    else
      render :new
    end
  end

  private

  def option_params
    params.require(:option).permit(:name, :description, :photo, )
  end
end
