require 'rails_helper'

RSpec.describe InmuebleController, :type => :controller do
	describe "GET index" do
    before(:each) do
      TipoDeInmueble.create(nombre: "Apartamentos")
    end
    it "responde correctamente" do
      get :index, :id => 1
      expect(response).to be_success
      expect(response.status).to eq(200)
    end

    it "muestra la plantilla index" do
      get :index, :id => 1
      expect(response).to render_template("index")
    end
	end	
end
