class AddPublicToExhibits < ActiveRecord::Migration
  def change
    add_column :exhibits, :public, :boolean, :default => true
  end
end
