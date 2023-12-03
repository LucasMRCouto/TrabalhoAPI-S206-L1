Feature: Testando a API do Rick and Morty

Background:
    * url 'https://rickandmortyapi.com'

Scenario: Testando get de um personagem da API
    Given path 'api/character/1'
    When method get
    Then status 200



       