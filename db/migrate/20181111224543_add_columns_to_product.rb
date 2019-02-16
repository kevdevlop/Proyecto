class AddColumnsToProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :is_new, :boolean, default: true
    add_column :products, :off_sale, :boolean, default: false
    add_column :products, :like_puntuation, :integer, default: 0
  end
end
