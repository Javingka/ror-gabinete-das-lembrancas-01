class AddCaraToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :cara, :boolean, default: false
  end
end
