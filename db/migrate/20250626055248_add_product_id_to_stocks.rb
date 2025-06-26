class AddProductIdToStocks < ActiveRecord::Migration[8.0]
  def change
    add_reference :stocks, :product, null: false, foreign_key: true
  end
end
