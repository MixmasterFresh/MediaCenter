class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def next_songs_add(song_id)
    @@next_songs ||= []
    @@next_songs << song_id
  end

  def next_song
    @@next_songs ||= []
    return nil if @@next_songs.empty?
    song_id = @@next_songs[0]

    Song.where(id: song_id).first
  end


  def next_song_add(song_id)
    @@next_songs ||= []
    @@next_songs.insert(0, song_id)
  end
end