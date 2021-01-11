class CreateEspecialidades < ActiveRecord::Migration[5.2]
  def change
    create_table :especialidades do |t|

      t.timestamps
    end
  end
end
