Feature: Scenarios outline

  Background:
    * json dataTest = read('classpath:chapterTestContainer/testScenarioOutline/practica2/dataTest.json')

  @sc01
  Scenario Outline: Afiliar Cliente <TipoCliente> - Ejemplo con data quemada
  DADO un cliente joven
  CUANDO realiza la afiliacion a la aplicacion yappy+
  ENTONCES el servicio respondera exitoso

    * def vrequest = { "tipoCliente": <TipoCliente>  }
    * def vresponse = { "status": 200, "description": "usuario afiliado"  }

    Given print ("Usuario afiliandose: ")
    When print vrequest
    Then print vresponse

    Examples:
      |TipoCliente            |
      |Joven                  |
      |Personal               |
      |Comercial              |
      |Comercial tipo grupo   |

  @sc02
  Scenario Outline: Afiliar Cliente <TipoCliente> - Ejemplo consumiendo archivo json
  DADO un cliente joven
  CUANDO realiza la afiliacion a la aplicacion yappy+
  ENTONCES el servicio respondera exitoso

    * def vrequest = { "tipoCliente": <TipoCliente>  }
    * def vresponse = { "status": 200, "description": "usuario afiliado"  }

    Given print ("Usuario afiliandose: ")
    When print vrequest
    Then print vresponse

    Examples:
      |  dataTest.sc02  |

  @sc03
  Scenario Outline: Afiliar Cliente <TipoCliente> - Ejemplo recorriendo una matriz
  DADO un cliente joven
  CUANDO realiza la afiliacion a la aplicacion yappy+
  ENTONCES el servicio respondera exitoso

    * def vrequest = { "tipoCliente": <TipoCliente>  }
    * def vresponse = { "status": 200, "description": "usuario afiliado"  }

    Given print ("Usuario afiliandose: ")
    When print vrequest
    Then print vresponse

    Examples:
      |  dataTest.sc03[1]  |
