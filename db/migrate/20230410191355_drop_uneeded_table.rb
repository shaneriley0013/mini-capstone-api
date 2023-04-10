class DropUneededTable < ActiveRecord::Migration[7.0]
  def change
    drop_table :add_supplier_to_products
  end
end
