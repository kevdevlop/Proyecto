class CreateSaleItems < ActiveRecord::Migration[5.2]
  def change
    create_table :sale_items do |t|
      t.decimal :price, null: false, precision: 15, scale: 2
      t.integer :quantity, null: false

      t.timestamps
    end
  end
end
