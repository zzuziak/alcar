class PagesController < ApplicationController
  def home
    @categories = Category.all
    @hours = Hour.all
  end
end
