class MissionControlController < ApplicationController

  def index
  end

  def play_song
    @song = Song.where(id: params[:id])
    @url = @song.file.url
  end
end
