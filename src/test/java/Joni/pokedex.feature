Feature: Trabajo con la pokedex

   #El resultado de este test debe ser igual a 1302 que es el total de pokemon que existe
   #Validacion doble request 200 y numero de pokemons
  Scenario: Obtener listado pokemons
    Given url "https://pokeapi.co/api/v2/" + "pokemon/?limit=811"
    When method get
    Then status 200
    And def count = $.count
    And match count == 1302


  Scenario Outline: Obtener pokemons iniciales 1º generacion pruebas positivas
    Given url "https://pokeapi.co/api/v2/" + "pokemon/" + <nombre>
    When method <metodo>
    Then status 200

    Examples:
      | nombre       | metodo |
      | "charmander" | get    |
      | "bulbasaur"  | get    |
      | "squirtle"   | get    |