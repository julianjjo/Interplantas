require 'rails_helper'

RSpec.describe Variedad, :type => :model do
  it "la variedad de la planta ha sido guardada" do
    variedad_hibiscus = Variedad.create(nombre: "Cayeno", descripcion: "Hibiscus")
    expect(Variedad.find(1)).to eq(variedad_hibiscus)
  end
end
