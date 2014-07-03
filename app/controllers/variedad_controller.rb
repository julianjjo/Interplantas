class VariedadController < ApplicationController
	def index
		@variedades = Variedad.all
	end
	def show		
		@variedad = Variedad.find(params[:id])
		@plantas = @variedad.plantas.all
	end
end
