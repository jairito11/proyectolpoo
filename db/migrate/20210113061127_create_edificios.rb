class CreateEdificios < ActiveRecord::Migration[5.2]
  def change
    create_table :edificios do |t|

      t.timestamps
    end
  end
end
