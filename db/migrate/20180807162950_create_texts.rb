class CreateTexts < ActiveRecord::Migration[5.2]
  def change
    create_table :texts do |t|
      t.string :headline
      t.integer :order
      t.text :sentences
      t.integer :like_no, default: 0

      t.timestamps
    end
  end
end
