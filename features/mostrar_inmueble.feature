# language: es
Característica: Mostrar inmuebles

	Esquema del escenario: Mirar pagina de los inmuebles
		Dado que da esta en inicio
		Y que busca el tipo de inmueble "<tipo de inmueble>"		
		Y que da click en finca raiz
		Cuando da click en el tipo de inmueble "<tipo de inmueble>"
		Entonces mostrara los immuebles disponibles de pagina con titulo "<tipo de inmueble>"

		Ejemplos: 
			|	tipo de inmueble |
			|	Apartamentos   	 |
			|	Casas          	 | 
			|	Fincas         	 | 
			|	Lotes				  	 | 
