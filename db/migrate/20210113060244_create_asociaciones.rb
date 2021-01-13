class CreateAsociaciones < ActiveRecord::Migration[5.2]
  def change
    create_table :asociaciones do |t|

      t.timestamps
    end
  end
end
