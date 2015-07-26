class ReaderController < ApplicationController

  def index
    @song = Song.new
  end

  def upload_song
    @song = Song.create(song_params)
    if @song.present?
      redirect_to root_path
    else
      redirect_to :back
    end
  end

  private

  def song_params
    params.require(:song).permit(:title, :file)
  end
end
