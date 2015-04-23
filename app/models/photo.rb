class Photo < ActiveRecord::Base
  belongs_to :gabinete_object
  validates :gabinete_object, presence: true
  mount_uploader :picture, PictureUploader
  validate :picture_size

  private

    def picture_size
      if picture.size > 5.megabytes
        errors.add(:picture, 'a imagem tem que ser menor que 5MB')
      end
    end

end
