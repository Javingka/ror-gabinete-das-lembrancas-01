class CreateHistories < ActiveRecord::Migration
  def change
    create_table :histories do |t|
      t.text :memoria
      t.references :gabinete_object, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
