class AddDirectorToPeliculas < ActiveRecord::Migration[5.1]
  def change
    add_column :peliculas, :director, :string
  end
end
