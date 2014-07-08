class CreateInmuebles < ActiveRecord::Migration
  def change
    create_table :inmuebles do |t|
      t.string :tipo
      t.string :ciudad
      t.string :direccion

      t.timestamps
    end
  end
end
