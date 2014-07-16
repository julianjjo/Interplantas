require 'rails_helper'

RSpec.describe FincaRaizController, :type => :controller do
	describe "GET #index" do
		it "reponde correctamente el codigo HTTP 200" do
	      get :index
	      expect(response).to be_success
	      expect(response.status).to eq(200)
	    end

	    it "renderiza la plantilla index" do
	      get :index
	      expect(response).to render_template("index")
	    end

	    it "crear @tipo_de_inmuebles" do
	      tipo_de_inmueble = TipoDeInmueble.create(nombre: "Apartamento")
	      get :index
	      expect(assigns(:tipos_de_inmueble)).to eq([tipo_de_inmueble])
	    end
	end
end
