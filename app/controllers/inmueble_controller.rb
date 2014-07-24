class InmuebleController < ApplicationController
	def index		
		@tipo_de_inmueble = TipoDeInmueble.find(params[:id])
		@inmuebles = @tipo_de_inmueble.inmuebles.all
	end
end
