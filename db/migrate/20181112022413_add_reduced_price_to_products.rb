class AddReducedPriceToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :reduced_price, :decimal
    add_column :products, :percent_discount, :integer
  end
end
