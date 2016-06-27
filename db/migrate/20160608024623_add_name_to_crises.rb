class AddNameToCrises < ActiveRecord::Migration[5.0]
  def change
    add_column :crises, :name, :string
  end
end
