class Photo < ApplicationRecord
  belongs_to :place
  mount_uploader :picture, PictureUploader
  serialize :picture, JSON
end
