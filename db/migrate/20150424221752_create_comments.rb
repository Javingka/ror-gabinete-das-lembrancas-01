class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :comentario
      t.string :pessoa
      t.references :exhibit, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
