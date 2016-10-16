class CreateRequestRecords < ActiveRecord::Migration
  def change
    create_table :request_records do |t|
      t.text :request_type
      t.integer :count

      t.timestamps null: false
    end
  end
end
