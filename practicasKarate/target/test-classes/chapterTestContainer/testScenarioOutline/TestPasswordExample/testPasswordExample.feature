Feature: Scenarios outline

  Background:
    * json dataTest = read('classpath:chapterTestContainer/testScenarioOutline/TestPasswordExample/dataTest.json')

  Scenario Outline: Registro de usuario en yappy <phone>
    DADO un usuario en la pagina de registro
    CUANDO especifica los datos necesarios para afiliacion
    ENTONCES el servicio respondera exitoso

    * json exampleRequest = { "phone": <phone>, "password": <password>  }
    * json exampleResponse = { "status": 200, "description": "usuario registrado correctamente"  }

    Given print ("Usuario a registrarse")
    When print exampleRequest
    Then print exampleResponse

    Examples:
      |phone        |password   |
      |+50764210000 |Test1234*  |
      |+50764210001 |Test1234@  |
      |+50764210002 |Test1234=  |
      |+50764210003 |Test1234-  |

  Scenario Outline: -Registro de usuario en yappy <phone>
  DADO un usuario en la pagina de registro
  CUANDO especifica los datos necesarios para afiliacion
  ENTONCES el servicio respondera exitoso

    * json exampleRequest = { "phone": <phone>, "password": <password>  }
    * json exampleResponse = { "status": 200, "description": "usuario registrado correctamente"  }

    Given print ("Usuario a registrarse")
    When print exampleRequest
    Then print exampleResponse

    Examples:
      | dataTest.sc01  |