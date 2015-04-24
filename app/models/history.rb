class History < ActiveRecord::Base
  belongs_to :gabinete_object
  validates :gabinete_object, presence: true

end
