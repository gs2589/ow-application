class AddWikiUrlToCrises < ActiveRecord::Migration[5.0]
  def change
    add_column :crises, :wiki_url, :string
  end
end
