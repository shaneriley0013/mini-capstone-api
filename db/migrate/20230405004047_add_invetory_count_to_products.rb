class AddInvetoryCountToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :invetory_count, :integer
  end
end
