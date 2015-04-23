class CreateExhibits < ActiveRecord::Migration
  def change
    create_table :exhibits do |t|
      t.string :cidade
      t.string :datainicio
      t.string :datafim
      t.string :local

      t.timestamps null: false
    end
  end
end
