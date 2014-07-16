class CreateTipoDeInmuebles < ActiveRecord::Migration
  def change
    create_table :tipo_de_inmuebles do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
