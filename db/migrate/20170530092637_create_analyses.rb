class CreateAnalyses < ActiveRecord::Migration[5.1]
  def change
    create_table :analyses do |t|
      t.string :title
      t.text :field
      t.timestamp :created_at
      t.integer :user_id
      t.integer :videogame_id

      t.timestamps
    end
  end
end
