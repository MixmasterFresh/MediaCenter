class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def stream_connection
    @@stream_connection
  end

  def stream_connection=(connection)
    @@stream_connection = connection
  end

  def next_song
    @@next_song
  end

  def next_song=(song)
    @@next_song = song
  end
end