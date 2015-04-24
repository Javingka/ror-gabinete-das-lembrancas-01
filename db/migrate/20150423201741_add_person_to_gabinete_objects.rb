class AddPersonToGabineteObjects < ActiveRecord::Migration
  def change
    add_column :gabinete_objects, :pessoa, :string
    add_column :gabinete_objects, :idade, :string
  end
end
