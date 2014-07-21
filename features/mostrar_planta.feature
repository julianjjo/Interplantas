# language: es
Característica: Mostrar las plantas

  Escenario: Mirar las plantas de una variedad
    Dado que busca las plantas de la variedad "Cayeno" en la pagina vivero 
    Cuando doy click en la variedad Cayeno
    Entonces mostrara la planta con el nombre "Cayeno Rosado"
  
  Esquema del escenario: Mirar la informacion de una planta  
    Dado que busca las plantas de la "<variedad>" en la pagina vivero 
    Cuando da click en la variedad de la "<planta>"
    Entonces mostrara la informacion completa de la planta con "<nombre>"
    
    Ejemplos:
      | variedad    | planta              | nombre              |
      | Cayeno      | Cayeno Blanco       | Cayeno Blanco       |
      | Mandevilla  | Mandevilla Roja     | Mandevilla Roja     |
      | Mandevilla  | Mandevilla Blanca   | Mandevilla Blanca   |
      | Estefanosis | Estefanosis Roja    | Estefanosis Roja    |
      | Cayeno      | Cayeno Boreal       | Cayeno Boreal       |
      | Cayeno      | Cayeno Black Dragon | Cayeno Black Dragon |
  
