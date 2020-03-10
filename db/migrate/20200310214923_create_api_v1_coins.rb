class CreateApiV1Coins < ActiveRecord::Migration[6.0]
  def change
    create_table :api_v1_coins do |t|
      t.string :value
      t.string :name

      t.timestamps
    end
  end
end
