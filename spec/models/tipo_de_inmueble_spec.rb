require 'rails_helper'

RSpec.describe TipoDeInmueble, :type => :model do
  it "la Tipo de Inmueble Apartamento ha sido guardada" do
    Apartamento = TipoDeInmueble.create!(nombre: "Apartamento")
    expect(TipoDeInmueble.find(1)).to eq(Apartamento)
  end
end
