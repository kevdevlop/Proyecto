class Sale < ApplicationRecord
 has_many :sale_items, dependent: :destroy
end
