class AddObjetoCapaToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :ocapa, :boolean, default: false
  end
end
