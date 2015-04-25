class AddColetaToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :coleta, :boolean, default: false
  end
end
