class AddFieldsToTexts < ActiveRecord::Migration[5.2]
  def change
    add_column :texts, :publish_at, :datetime
  end
end
