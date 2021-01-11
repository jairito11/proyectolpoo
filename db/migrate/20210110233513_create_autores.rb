class CreateAutores < ActiveRecord::Migration[5.2]
  def change
    create_table :autores do |t|
      t.string :nombre
      t.string :paterno
      t.string :materno
      t.string :nacionalidad
      t.string :lengua
      t.string :religion
      t.string :distinciones
      t.date :fechaNacimiento

      t.timestamps
    end
  end
end
