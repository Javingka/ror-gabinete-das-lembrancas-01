class AddVideoToExhibits < ActiveRecord::Migration
  def change
    add_column :exhibits, :video_src, :string
  end
end
