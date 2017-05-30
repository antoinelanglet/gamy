class CreateVideoGames < ActiveRecord::Migration[5.1]
  def change
    create_table :video_games do |t|
      t.string :name
      t.string :editor
      t.string :img_url

      t.timestamps
    end
  end
end
