Feature: Testando API Rick&Morty

Background: Executa antes de cada teste
    * def url_base = 'https://rickandmortyapi.com'
Scenario: Testando Retorno
    Given url 'https://pokeapi.co/api/v2/pokemon/pikachu'
    When method get
    Then status 200