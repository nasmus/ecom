class RenameAdminStockToStock < ActiveRecord::Migration[8.0]
  def change
    rename_table :admin_stocks, :stocks
  end
end
