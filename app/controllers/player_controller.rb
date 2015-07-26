class PlayerController < ApplicationController
  def index
    stream_connection = response.stream
  end
end
