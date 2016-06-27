class RemoveCasualtiesFromCrises < ActiveRecord::Migration[5.0]
  def change
    remove_column :crises, :casualties, :integer
  end
end
