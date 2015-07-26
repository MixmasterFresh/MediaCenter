class PlayerController < ApplicationController
  def index
    @song = next_song
    @url = @song.file.url unless @song.nil?
    binding.pry
    render 'index'
  end
end
