class ChangeSizeTypeInStocks < ActiveRecord::Migration[8.0]
  def change
    change_column :stocks, :size, :string
  end
end
