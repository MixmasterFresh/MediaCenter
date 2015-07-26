class PlayerController < ApplicationController
  def index
    stream_connection_add response
    @song = next_song
    @url = @song.file.url unless @song.nil?
    render 'index'
    stream_connection.stream.write ""
  end
end
