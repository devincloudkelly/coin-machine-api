class AddColumnToCoins < ActiveRecord::Migration[6.0]
  def change
    add_column :coins, :quantity, :integer, default: 0
  end
end
