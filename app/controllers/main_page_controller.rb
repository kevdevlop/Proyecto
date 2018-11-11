class MainPageController < ApplicationController
  def index
    @categories = Category.all

  end
end
