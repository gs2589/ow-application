class AddKeywordsToCrises < ActiveRecord::Migration[5.0]
  def change
    add_column :crises, :keywords, :text, array: true, default: []
  end
end
