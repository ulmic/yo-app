class AddConvertedBodyToConversions < ActiveRecord::Migration
  def change
    add_column :conversions, :converted_body, :text
  end
end
