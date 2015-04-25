class Exhibit < ActiveRecord::Base
  has_many :gabinete_objects, :dependent => :destroy
  has_many :photos, :dependent => :destroy
  has_many :comments, :dependent => :destroy
end
