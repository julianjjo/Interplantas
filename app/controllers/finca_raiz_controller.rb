class FincaRaizController < ApplicationController
	def index
		@tipos_de_inmueble = TipoDeInmueble.all
	end
end
