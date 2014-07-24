class CreateInmuebles < ActiveRecord::Migration
  def change
    create_table :inmuebles do |t|
      t.belongs_to :tipo_de_inmueble
      t.string :nombre

      t.timestamps
    end
  end
end
