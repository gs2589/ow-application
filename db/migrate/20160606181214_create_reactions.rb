class CreateReactions < ActiveRecord::Migration[5.0]
  def change
    create_table :reactions do |t|
      t.string :type
      t.datetime :publication_date
      t.string :sentiment
      t.float :sentiment_score
    end
  end
end
