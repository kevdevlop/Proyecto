class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:id])
    @categories = Category.all
    @products = ProductCategory.where(category_id: @category.id).page params[:page]
  end


  def get_categories_by

  end
end
