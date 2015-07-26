class PlayerController < ApplicationController
  def index
    stream_connection = response
    @song = next_song
    @url = @song.file.url unless @song.nil?
  end
end
