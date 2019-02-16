class ProductCategory < ApplicationRecord
  paginates_per 5
  belongs_to :product
  belongs_to :category
end
