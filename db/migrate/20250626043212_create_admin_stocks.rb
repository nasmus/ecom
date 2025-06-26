class CreateAdminStocks < ActiveRecord::Migration[8.0]
  def change
    create_table :admin_stocks do |t|
      t.integer :size
      t.integer :price

      t.timestamps
    end
  end
end
