require 'rails_helper'

RSpec.describe PlantaController, :type => :controller do
	describe "GET index" do
	    it "responde correctamente" do
	      get :index
	      expect(response).to be_success
	      expect(response.status).to eq(200)
	    end

	    it "muestra la plantilla index" do
	      get :index
	      expect(response).to render_template("index")
	    end
  	end	
  	describe "GET show" do
	    it "responde correctamente" do
	      get :show, :id => 1
	      expect(response).to be_success
	      expect(response.status).to eq(200)
	    end

	    it "muestra la plantilla show" do
	      get :show, :id => 1
	      expect(response).to render_template("show")
	    end
	end
end
