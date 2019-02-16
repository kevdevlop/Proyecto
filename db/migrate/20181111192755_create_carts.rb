class CreateCarts < ActiveRecord::Migration[5.2]
  def change
    create_table :carts do |t|
      t.references :client, foreign_key: true
      t.boolean :active
      t.integer :num_items

      t.timestamps
    end
  end
end
