class CreateTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions do |t|
      t.string :transaction_type
      t.coin :resource
      t.api_user :resource

      t.timestamps
    end
  end
end
