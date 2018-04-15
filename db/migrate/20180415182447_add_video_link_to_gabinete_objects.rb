class AddVideoLinkToGabineteObjects < ActiveRecord::Migration
  def change
    add_column :gabinete_objects, :video_link, :string
  end
end
