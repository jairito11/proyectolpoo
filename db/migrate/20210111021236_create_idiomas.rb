class CreateIdiomas < ActiveRecord::Migration[5.2]
  def change
    create_table :idiomas do |t|
      t.string :nombre
      t.string :region
      t.integer :hablantes
      t.integer :puesto
      t.string :familia
      t.string :dialectos
      t.string :escritura
      t.string :reguladoPor

      t.timestamps
    end
  end
end
