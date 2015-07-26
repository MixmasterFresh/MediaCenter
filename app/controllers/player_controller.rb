class PlayerController < ApplicationController
  def play
    stream_connection = response
    @song = next_song
    @url = @song.file.url
  end
end
