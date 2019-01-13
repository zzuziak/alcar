class HoursController < ApplicationController
  before_action :set_hour, only: [:edit, :update]
  def edit
  end

  def update
    if @hour.update(hour_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def set_hour
    @hour = Hour.find(params[:id])
  end

  def hour_params
    params.require(:hour).permit(:hours)
  end
end
