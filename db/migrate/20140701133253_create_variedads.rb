class CreateVariedads < ActiveRecord::Migration
  def change
    create_table :variedads do |t|
      t.string :nombre
      t.string :descripcion

      t.timestamps
    end
  end
end
