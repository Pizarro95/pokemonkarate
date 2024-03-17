 Feature: Get pokemon on regres

   Scenario: Get a pokemon
     Given url "https://pokeapi.co/api/v2/" + "pokemon/ditto"
     When method get
     Then status 200