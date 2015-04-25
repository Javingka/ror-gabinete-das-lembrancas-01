class AddMapToExhibit < ActiveRecord::Migration
  def change
    add_column :exhibits, :map, :string
  end
end
