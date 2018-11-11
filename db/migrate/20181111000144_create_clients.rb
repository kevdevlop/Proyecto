class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :name, null: false
      t.string :last_name
      t.string :email, null: false
      t.string :address, null: false
      t.string :phone_numbers
      t.boolean :active, default: true

      t.timestamps
    end
  end
end
