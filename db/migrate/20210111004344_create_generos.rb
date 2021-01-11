class CreateGeneros < ActiveRecord::Migration[5.2]
  def change
    create_table :generos do |t|
      t.string :genero
      t.string :subgenero
      t.string :descripcion
      t.string :semantica
      t.string :sintactica
      t.string :fonologia
      t.string :contexto
      t.string :historia

      t.timestamps
    end
  end
end
