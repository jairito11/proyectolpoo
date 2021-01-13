class CreateProveedores < ActiveRecord::Migration[5.2]
  def change
    create_table :proveedores do |t|

      t.timestamps
    end
  end
end
