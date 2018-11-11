class AddSaleItemToSale < ActiveRecord::Migration[5.2]
  def change
    add_reference :sale_items, :sale, foreign_key: true
  end
end
