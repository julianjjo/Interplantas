require 'rails_helper'

RSpec.describe InicioController, :type => :controller do
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
	end
end
