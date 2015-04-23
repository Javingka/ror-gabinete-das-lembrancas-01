class Exhibit < ActiveRecord::Base
  has_many :gabinete_objects, :dependent => :destroy
end
