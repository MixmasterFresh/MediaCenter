class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.text :title
      t.integer :year
      t.text :album_name
      t.text :artist
      t.timestamps
    end
  end
end
