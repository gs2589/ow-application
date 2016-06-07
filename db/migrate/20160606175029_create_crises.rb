class CreateCrises < ActiveRecord::Migration[5.0]
  def change
    create_table :crises do |t|
      t.text :description
      t.integer :casualties
      t.text :parties, array: true, default: []

      t.timestamps
    end
  end
end
