class CreateBillingBuys < ActiveRecord::Migration[5.2]
  def change
    create_table :billing_buys do |t|
      t.references :sale, foreign_key: true
      t.references :client, foreign_key: true
      t.integer :method_pay

      t.timestamps
    end
  end
end
