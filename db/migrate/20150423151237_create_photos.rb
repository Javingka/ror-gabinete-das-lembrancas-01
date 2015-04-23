class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :picture
      t.references :gabinete_object, index: true, foreign_key: true
    end
  end
end
