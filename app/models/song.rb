class Song < ActiveRecord::Base
  validates :title,
            presence: true
  validates :file,
            attachment_content_type: { content_type: /\Aaudio\/.*\Z/ },
            attachment_presence: true
  has_attached_file :file
end
