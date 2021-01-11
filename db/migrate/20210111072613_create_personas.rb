class CreatePersonas < ActiveRecord::Migration[5.2]
  def change
    create_table :personas do |t|

      t.timestamps
    end
  end
end
