class CreateConversions < ActiveRecord::Migration
  def change
    create_table :conversions do |t|
      t.integer :size
      t.text :status, default: :not_rated
      t.text :body

      t.timestamps null: false
    end
  end
end
