class CreatePlanta < ActiveRecord::Migration
  def change
    create_table :planta do |t|
      t.belongs_to :variedad
      t.string :nombre
      t.text :descripcion
      t.timestamps
    end
  end
end
