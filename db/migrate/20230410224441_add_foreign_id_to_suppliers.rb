class AddForeignIdToSuppliers < ActiveRecord::Migration[7.0]
  def change
    add_column :suppliers, :foreign_id, :integer
  end
end
