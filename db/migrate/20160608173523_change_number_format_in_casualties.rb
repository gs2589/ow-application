class ChangeNumberFormatInCasualties < ActiveRecord::Migration[5.0]
  def change
    change_column :casualties, :number, :string
  end
end
