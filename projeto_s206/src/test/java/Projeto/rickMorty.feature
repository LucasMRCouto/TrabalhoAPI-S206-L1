Feature: Testando a API do Rick and Morty

Background:
    * url 'https://rickandmortyapi.com'

Scenario: Testando get de um personagem da API
    Given path 'api/character/1'
    When method get
    Then status 200

Scenario: Tentar obter informações de um personagem inexistente
    Given path 'api/character/99999'
    When method get
    Then status 404
    And match response == {"error":"Character not found"}

Scenario: Tentando obter informacoes de uma localizacao inexistente
    Given path 'api/location/10000'
    When method get
    Then status 404
    And match response == {"error":"Location not found"}

Scenario: Testando o JSON do personagem Scary Terry
    Given path 'api/character/306'
    When method get
    And match response.name == 'Scary Terry'