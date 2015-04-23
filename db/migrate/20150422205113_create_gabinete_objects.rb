class CreateGabineteObjects < ActiveRecord::Migration
  def change
    create_table :gabinete_objects do |t|
      t.string :nome
      t.text :descripcao
      t.references :exhibit, index: true, foreign_key: true
    end
  end
end
