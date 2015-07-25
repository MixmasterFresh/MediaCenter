class ReaderController < ApplicationController

  def welcome
    @song = Song.new
  end

  def upload_song
    @song = Song.create(song_params)
    redirect_to root_path
  end

  private

  def song_params
    params.require(:song).permit(:title, :file)
  end
end
