class RemovePublishAtTestsImages < ActiveRecord::Migration[5.2]
  def change
    remove_column :images, :publish_at, :datetime
    remove_column :texts, :publish_at, :datetime
  end
end
