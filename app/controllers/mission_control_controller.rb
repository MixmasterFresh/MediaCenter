class MissionControlController < ApplicationController

  def index
    @songs = Song.all
  end


  def play_song
    next_song_add params[:id]
    redirect_to :back
  end

  def queue_song
    next_songs_add params[:id]
    redirect_to :back
  end
end
