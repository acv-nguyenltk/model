class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.string :headline
      t.integer :order
      t.string :URL_image
      t.integer :like_no, default: 0

      t.timestamps
    end
  end
end
