class RenameColumnInArticles < ActiveRecord::Migration[5.2]
  def change
    rename_column :articles, :like_number, :like_no
  end
end
