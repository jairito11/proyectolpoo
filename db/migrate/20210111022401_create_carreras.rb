class CreateCarreras < ActiveRecord::Migration[5.2]
  def change
    create_table :carreras do |t|
      t.string :clave
      t.string :nombre
      t.string :descripcion
      t.string :campus
      t.string :municipio
      t.string :estado
      t.string :pais
      t.string :coordinador

      t.timestamps
    end
  end
end
