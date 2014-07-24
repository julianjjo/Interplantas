# language: es
Característica: Mostrar tipos inmuebles

	Escenario: Mirar los tipos de inmuebles
		Dado que da esta en inicio
		Cuando da click en finca raiz
		Entonces mostrara los immuebles en la pagina con titulo "Finca Raiz"

	Esquema del escenario: Mirar un tipo de inmueble
		Dado que da esta en inicio		
		Y que busca el "<tipo de inmueble>"
		Cuando da click en finca raiz
		Entonces mostrara el "<tipo de inmueble>"
	
		Ejemplos: 
			|	tipo de inmueble |
			|	Apartamento   	 |
			|	Casa          	 |
			|	Finca         	 |
			|	Lote 			 |