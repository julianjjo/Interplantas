Feature: Mostrar las plantas
  Yo como viverista 
  Deseo poder mirar las plantas del vivero que quiero comprar
  Para comprarlas

  Background:
    Given Que el viverista desea mirar las plantas del vivero   

  Scenario: Mostrar pagina del vivero  	   
  	When Da click en el link Vivero de la barra de navegación  
    Then Abrira la pagina que muestra las plantas con el titulo "Vivero"
  
  Scenario: Mostrar las variedades de las plantas
  	And busco la variedad con el nombre "Cayeno"
  	When Da click en el link Vivero de la barra de navegación 
  	Then Mostrara la variedad con el nombre "Cayeno"
  
