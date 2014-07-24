require 'rails_helper'

RSpec.describe Inmueble, :type => :model do
  it "el inmueble ha sido guardada" do
    inmueble = Inmueble.create(nombre: "Apartamento de 200mts2")
    expect(Inmueble.find(1)).to eq(inmueble)
  end
end
