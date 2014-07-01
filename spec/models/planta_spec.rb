require 'rails_helper'

RSpec.describe Planta, :type => :model do
  it "la planta cayeno ha sido guardada" do
    cayeno = Planta.create!(nombre: "Cayeno Rojo", descripcion: "Cayeno de color rosado")
    expect(Planta.find(1)).to eq(cayeno)
  end  
end
