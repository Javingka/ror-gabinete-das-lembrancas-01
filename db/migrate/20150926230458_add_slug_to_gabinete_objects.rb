class AddSlugToGabineteObjects < ActiveRecord::Migration
  def change
    add_column :gabinete_objects, :slug, :string
    add_index :gabinete_objects, :slug, unique: true
  end
end
