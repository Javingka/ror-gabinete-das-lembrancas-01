class Exhibit < ActiveRecord::Base
  has_many :gabinete_objects, :dependent => :destroy
  has_many :photos, :dependent => :destroy
end
