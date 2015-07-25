class CreatePlaylists < ActiveRecord::Migration
  def change
    create_table :playlists do |t|
      t.text :name
      t.timestamps
    end
  end
end
