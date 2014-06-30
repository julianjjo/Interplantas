Feature: Mostrar las plantas
  Yo como viverista 
  Deseo poder mirar las plantas que quiero comprar
  Para comprarlas

  Scenario: Mostrar pagina de las vivero
    Given Que el viverista desea mirar las plantas del vivero
    When Da click en el link Vivero de la barra de navegación
    Then Abrira la pagina que muestra las plantas con el titulo "Vivero"
  
  
  

  
