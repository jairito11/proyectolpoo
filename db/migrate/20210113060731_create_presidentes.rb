class CreatePresidentes < ActiveRecord::Migration[5.2]
  def change
    create_table :presidentes do |t|

      t.timestamps
    end
  end
end
