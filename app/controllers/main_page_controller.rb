class MainPageController < ApplicationController
  def index
    max_puntuations = 6
    @products_best_puntuations = Product.where("products.like_puntuation >= ?", max_puntuations)

  end
end
