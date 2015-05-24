class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :name
      t.string :album
      t.string :artist
      t.string :art_location
      t.string :file_location

      t.timestamps
    end
  end
end
