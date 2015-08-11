class GabineteObject < ActiveRecord::Base
  belongs_to :exhibit
  has_many :photos, :dependent => :destroy
  has_many :histories, :dependent => :destroy
  accepts_nested_attributes_for :photos, allow_destroy: true
  validates :expo_ID, uniqueness: true
end
