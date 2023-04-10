class AddForeignIdToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :foreign_id, :integer
  end
end
