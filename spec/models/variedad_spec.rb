require 'rails_helper'

RSpec.describe Variedad, :type => :model do
  it "la variedad ha sido guardada" do
    variedad_hibiscus = Variedad.create(nombre: "Cayeno", descripcion: "Hibiscus")
    expect(Variedad.find(1)).to eq(variedad_hibiscus)
  end
  it "la variedad de la planta ha sido guardada" do
    variedad_hibiscus = Variedad.create(nombre: "Cayeno", descripcion: "Hibiscus")
    variedad_hibiscus.plantas.build(nombre: "Cayeno Rojo", descripcion: "Cayeno de color rosado")
    variedad_hibiscus.save
    expect(Variedad.find(1)).to eq(variedad_hibiscus)
  end
end
