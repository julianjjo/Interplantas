class PlantaController < ApplicationController
	def index
		@plantas = Planta.all
	end
end
