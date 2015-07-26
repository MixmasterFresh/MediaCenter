class PlayerController < ApplicationController
  def index
    @song = next_song
    @url = @song.file.url unless @song.nil?
    @@next_songs.delete_at(0)
    render 'index'
  end
end
