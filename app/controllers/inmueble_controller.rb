class InmuebleController < ApplicationController
	def index		
		@tipo_de_inmueble = TipoDeInmueble.find(params[:id])
	end
end
