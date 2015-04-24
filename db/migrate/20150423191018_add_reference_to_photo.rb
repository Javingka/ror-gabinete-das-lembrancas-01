class AddReferenceToPhoto < ActiveRecord::Migration
  def change
    add_reference :photos, :exhibit, index: true, foreign_key: true
  end
end
