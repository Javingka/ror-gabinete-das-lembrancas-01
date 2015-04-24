class AddFraseToHistories < ActiveRecord::Migration
  def change
    add_column :histories, :frase, :string
  end
end
