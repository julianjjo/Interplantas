# language: es
Característica: Mostrar las plantas
  Yo como cliente de vivero
  Deseo mirar las plantas que quiero comprar
  Para ganar dinero y/o disfrutarlas

  Escenario: Mirar las plantas de una variedad
    Dado que busca las plantas de la variedad Cayeno en la pagina vivero 
    Cuando doy click en la variedad Cayeno
    Entonces mostrara la planta con el nombre "Cayeno Rosado"
  
  Escenario: Mirar la informacion de una planta    
    Dado que busca las plantas de la variedad Cayeno en la pagina vivero
    Cuando doy click en la variedad Cayeno
    Y en el link de la planta "Cayeno Rosado"
    Entonces mostrara la informacion completa de 
  
  
