class CreateComentarios < ActiveRecord::Migration[5.1]
  def change
    create_table :comentarios do |t|
      t.string :comment
      t.string :name

      t.timestamps
    end
  end
end
