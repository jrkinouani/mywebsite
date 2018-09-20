class CreateProjets < ActiveRecord::Migration[5.1]
  def change
    create_table :projets do |t|
      t.string :title
      t.text :description
      t.string :url

      t.timestamps
    end
  end
end
