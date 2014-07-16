# language: es
Característica: Mostrar tipos inmuebles
	yo como persona
	quiero buscar un inmueble 
	para comprarlo

	Escenario: Mirar los tipos de inmuebles
		Dado que da esta en inicio
		Cuando da click en finca raiz
		Entonces mostrara los immuebles disponibles de pagina con titulo "Finca Raiz"

	Escenario: Mirar un tipo de inmueble
		Dado que da esta en inicio
		Cuando da click en finca raiz
		Y busca el tipo de inmueble "Apartamento"
		Entonces mostrara el tipo de inmueble "Apartamento"
	