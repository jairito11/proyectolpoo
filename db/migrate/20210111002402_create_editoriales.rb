class CreateEditoriales < ActiveRecord::Migration[5.2]
  def change
    create_table :editoriales do |t|
      t.string :nombre
      t.string :tipo
      t.string :isin
      t.string :industria
      t.string :formaLegal
      t.string :fundador
      t.string :sede
      t.date :fundacion

      t.timestamps
    end
  end
end
