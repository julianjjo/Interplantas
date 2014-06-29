class CreatePlanta < ActiveRecord::Migration
  def change
    create_table :planta do |t|
      t.string :nombre
      t.text :descripcion

      t.timestamps
    end
  end
end
