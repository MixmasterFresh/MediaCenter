class PlayerController < ApplicationController
  def index
    stream_connection_add response
    @song = next_song
    @url = @song.file.url unless @song.nil?
  end
end
