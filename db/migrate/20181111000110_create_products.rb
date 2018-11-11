class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.decimal :price, null: false, precision: 15, scale: 2
      t.text :descrption
      t.string :imagen
      t.integer :stock, null: false, default: 0
      t.integer :size, null: false
      t.integer :gender, null: false

      t.timestamps
    end
  end
end
