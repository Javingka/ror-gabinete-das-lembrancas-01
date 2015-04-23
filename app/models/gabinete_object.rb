class GabineteObject < ActiveRecord::Base
  belongs_to :exhibit
  has_many :photos, :dependent => :destroy
  accepts_nested_attributes_for :photos, allow_destroy: true
end
