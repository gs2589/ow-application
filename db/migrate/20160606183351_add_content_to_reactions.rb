class AddContentToReactions < ActiveRecord::Migration[5.0]
  def change
    add_column :reactions, :content, :text
  end
end
