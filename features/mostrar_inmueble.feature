# language: es
Característica: Mostrar inmuebles

	Esquema del escenario: Mirar pagina de los inmuebles
		Dado que da esta en inicio
		Y que busca el tipo de inmueble "<tipo de inmueble>"		
		Y que da click en finca raiz
		Cuando da click en el tipo de inmueble "<tipo de inmueble>"
		Entonces mostrara los immuebles en la pagina con titulo "<tipo de inmueble>"

		Ejemplos: 
			| tipo de inmueble |
			| Apartamentos     |
			| Casas            | 
			| Fincas           | 
			| Lotes			   | 

	Esquema del escenario: Mirar los muebles del tipo de imueble
		Dado que da esta en inicio
		Y que busca el tipo de inmueble "<tipo de inmueble>"		
		Y que da click en finca raiz
		Cuando busca el inmueble "<inmueble>"
		Y da click en el tipo de inmueble "<tipo de inmueble>"
		Entonces mostrara el el inmueble "<inmueble>"

		Ejemplos: 
			| tipo de inmueble | inmueble 				|
			| Apartamentos     | Apartamento de 200mt2	|
			| Casas            | Casa 2 pisos			|
			| Fincas           | Finca con picina		|
			| Lotes			   | Lote de 200mt2			|