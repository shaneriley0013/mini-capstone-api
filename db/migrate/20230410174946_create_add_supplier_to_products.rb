class CreateAddSupplierToProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :add_supplier_to_products do |t|
      t.string :name
      t.integer :phone
      t.string :email

      t.timestamps
    end
  end
end
