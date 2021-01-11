class CreatePrestamos < ActiveRecord::Migration[5.2]
  def change
    create_table :prestamos do |t|

      t.timestamps
    end
  end
end
