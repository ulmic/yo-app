class CreateTelegramUsers < ActiveRecord::Migration
  def change
    create_table :telegram_users do |t|
      t.integer :uid
      t.text :first_name

      t.timestamps null: false
    end
  end
end
