class CreateCoordinadores < ActiveRecord::Migration[5.2]
  def change
    create_table :coordinadores do |t|

      t.timestamps
    end
  end
end
