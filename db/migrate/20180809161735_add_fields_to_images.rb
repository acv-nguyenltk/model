class AddFieldsToImages < ActiveRecord::Migration[5.2]
  def change
    add_column :images, :publish_at, :datetime
  end
end
