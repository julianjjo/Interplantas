class PlantaController < ApplicationController
	def index
		@plantas = Planta.all
	end
	def show
		@variedad = Variedad.find(params[:id])
		@plantas = @variedad.plantas.all
	end
end
