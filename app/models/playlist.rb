class Playlist < ActiveRecord::Base
  has_many :playlist_memberships
  has_many :songs, through: :playlist_memberships
end
