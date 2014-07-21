# language: es
Característica: Mostrar las variedades

  Antecedentes:
    Dado que el viverista desea mirar las plantas del vivero       

  Escenario: Mostrar pagina del vivero  	   
  	Cuando da click en el link Vivero de la barra de navegación  
    Entonces Abrira la pagina que muestra las variedades de las plantas con el titulo "Vivero"
  
  Escenario: Mostrar las variedades de las plantas
  	Y busco la variedad con el nombre Cayeno
  	Cuando da click en el link Vivero de la barra de navegación 
  	Entonces mostrara la variedad con el nombre "Cayeno"
