Feature: Scenarios outline

  Background:
    * json dataTest = read('classpath:chapterTestContainer/testScenarioOutline/dataTest.json')

  Scenario Outline: No-JsonFile Afiliar Cliente<TipoCliente>
  DADO un cliente joven
  CUANDO realiza la afiliacion a la aplicacion yappy+
  ENTONCES el servicio respondera exitoso

    Given def vrequest = { "usuario": <usuario>, "password": <password>, "tipoCliente": <tipoCliente>  }
    Then def vresponse = { "status": 200, "description": "usuario afiliado"  }

  * karate.log("request: ", vrequest)
  * karate.log("response: ", vresponse)

    Examples:
      |TipoCliente          |usuario      |password   |tipoCliente|
      |Joven                |+50764210000 |Test1234*  |1          |
      |Personal             |+50764210001 |Test1234*  |2          |
      |Comercial            |+50764210002 |Test1234*  |3          |
      |Comercial tipo grupo |+50764210003 |Test1234*  |4          |


  Scenario Outline: Si-JsonFile Afiliar Cliente<TipoCliente>
  DADO un cliente joven
  CUANDO realiza la afiliacion a la aplicacion yappy+
  ENTONCES el servicio respondera exitoso

    Given def vrequest = { "usuario": <usuario>, "password": <password>, "tipoCliente": <tipoCliente>  }
    Then def vresponse = { "status": 200, "description": "usuario afiliado"  }

    * karate.log("request: ", vrequest)
    * karate.log("response: ", vresponse)

    Examples:
      | dataTest.sc01 |