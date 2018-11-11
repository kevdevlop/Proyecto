class Product < ApplicationRecord
  enum size: [:sm, :m, :lg]
  enum gender: [:man, :woman]
  validates :name, :price, :size, :gender, presence: true
end
