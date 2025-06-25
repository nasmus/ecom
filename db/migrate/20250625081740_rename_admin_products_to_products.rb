class RenameAdminProductsToProducts < ActiveRecord::Migration[8.0]
  def change
    rename_table :admin_products, :products
  end
end
