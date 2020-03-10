class CreateApiUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :api_users do |t|
      t.string :api_key
      t.string :username

      t.timestamps
    end
  end
end
