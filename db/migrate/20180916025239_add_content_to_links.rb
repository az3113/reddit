class AddContentToLinks < ActiveRecord::Migration[5.2]
  def change
    add_column :links, :content, :text
  end
end
