Feature: test de variables
  Background:

    Scenario: escenario 01 de variables - Parseando
      * def foo = '10'
      * string varString = { bar: '#(foo)' }
      * karate.log ("string example: " + varString)

      * string varIntegerParseado = { bar: '#(parseInt(foo))' }
      * karate.log ("string parseado a integer: " + varIntegerParseado)

    Scenario: escenario 02 de variables - enviando un string a parsearse a entero
      * def foo = 'a'
      * string varString = { bar: '#(foo)' }
      * karate.log ("string example: " + varString)

      * string varIntegerParseado = { bar: '#(parseInt(foo))' }
      * karate.log ("string parseado a integer: " + varIntegerParseado)

  Scenario: escenario 02 de variables - controlando el parse
    * def foo = 1

    # es un integer?
    * json isInteger = foo == (#number) ? "Parseamos " : foo
    * print isInteger
    #* string varIntegerParseado = { bar: '#(parseInt(foo))' }
    #* karate.log ("string parseado a integer: " + varIntegerParseado)
#repo de scrip, encuentro el sp que manda
  #transaction completed
 # se puede ejecutar la lambda directa, en lugar del stepFunction

  #Practicar implementar el karate-base y config