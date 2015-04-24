class AddExhibitCapaToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :ecapa, :boolean, default: false 
  end
end
