class Photo < ApplicationRecord
  belongs_to :user
  belongs_to :place
  has_many :photos
  mount_uploader :picture, PictureUploader
  serialize :picture, JSON
end
