class AddMontagemExpoCidadeNaturezaToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :montagem, :boolean, default: false
    add_column :photos, :expo, :boolean, default: false
    add_column :photos, :cidade, :boolean, default: false
    add_column :photos, :natureza, :boolean, default: false
  end
end
