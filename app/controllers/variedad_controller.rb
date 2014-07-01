class VariedadController < ApplicationController
	def index
		@variedades = Variedad.all
	end
end
