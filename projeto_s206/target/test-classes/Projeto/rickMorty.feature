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
    And match response.created == "2018-01-05T14:13:01.564Z"

Scenario: Testando o retorno e verificando o JSON
    Given path 'api/character/532'
    When method get
    Then status 200
    And match response.name == "Tony’s Wife"
    And match response.id == 532

Scenario: Testando o JSON de retorno de uma localizacao
    Given path 'api/location/19'
    When method get
    Then status 200
    And match response.name == "Gromflom Prime"
    And match response.type == "Planet"
    And match response.dimension == "Replacement Dimension"