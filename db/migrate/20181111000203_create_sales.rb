class CreateSales < ActiveRecord::Migration[5.2]
  def change
    create_table :sales do |t|
      t.decimal :total, null: false, precision: 15, scale: 2

      t.timestamps
    end
  end
end
