require 'rails_helper'

RSpec.describe TipoDeInmueble, :type => :model do
  it "el Tipo de Inmueble Apartamento ha sido guardado" do
    Apartamento = TipoDeInmueble.create!(nombre: "Apartamento")
    expect(TipoDeInmueble.find(1)).to eq(Apartamento)
  end

  it "el inmueble del Tipo de Inmueble Apartamento ha sido guardado" do
  	apartamento = TipoDeInmueble.create!(nombre: "Apartamento")
    apartamento.inmuebles.build(nombre: "Apartamento de 200mts2")
    apartamento.save
    expect(TipoDeInmueble.find(1)).to eq(apartamento)
  end
end 
