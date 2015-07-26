class MissionControlController < ApplicationController

  def index
    @songs = Song.all
  end


  def play_song
    next_song = params[:id]
    notify_player
    redirect_to :back
  end

  def queue_song
    next_songs = params[:id]
    redirect_to :back
  end
end
