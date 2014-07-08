require 'rails_helper'

RSpec.describe Inmueble, :type => :model do
  it "la planta cayeno ha sido guardada" do
    Apartamento = Inmueble.create!(tipo: "Apartamento", ciudad: "Fusagasuga" , direccion: "Calle 16a bis 15-51")
    expect(Inmueble.find(1)).to eq(Apartamento)
  end  
end
