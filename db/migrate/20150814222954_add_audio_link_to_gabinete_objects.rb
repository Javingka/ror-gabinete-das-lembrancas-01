class AddAudioLinkToGabineteObjects < ActiveRecord::Migration
  def change
    add_column :gabinete_objects, :audio_link, :string
  end
end
