Feature: Test postin article

  Background: Define base URL and authentication process
    Given url 'https://api.realworld.io/api/'
    Given path 'users/login'
    And request { "user": { "email": "karate001@test.com", "password": "Test1234*" }}
    When method Post
    Then status 200
    * def token = response.user.token

    Scenario: Create new Article

      Given header Authorization = 'Token ' + token
      Given path 'articles'
      And request {"article":{"tagList":[],"title":"TituloTest04","description":"aboutTest","body":"writingTest"}}
      When method Post
      Then status 200
      #And match response.article.title == ''