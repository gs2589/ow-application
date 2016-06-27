class CreateCasualties < ActiveRecord::Migration[5.0]
  def change
    create_table :casualties do |t|
      t.integer :number
      t.datetime :week_ending
      t.integer :crisis_id
      t.timestamps
    end
  end
end
