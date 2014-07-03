class PlantaController < ApplicationController
	def index
		@plantas = Planta.all
	end
	def show
	end
end
