class Photo < ActiveRecord::Base
  belongs_to :gabinete_object
  validates :gabinete_object, presence: true
  mount_uploader :picture, PictureUploader
end
