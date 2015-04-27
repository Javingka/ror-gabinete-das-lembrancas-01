class AddDescripcionToExhibits < ActiveRecord::Migration
  def change
    add_column :exhibits, :descripcion, :text
  end
end
