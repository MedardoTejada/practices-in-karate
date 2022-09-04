
  Feature: Test for the home page

    Background: define variables
      Given url 'https://api.realworld.io/api/'


    Scenario: get all tags
      Given path 'tags'
      When method Get
      Then status 200
      And match response.tags contains 'welcome'
      And match response.tags contains ['welcome','introduction']
      And match response.tags !contains 'sharingan'
      And match response.tags == "#array"
      And match each response.tags == "#string"
      And match response.tags == "#[4]"

    Scenario: get 10 articles from the page - params practice

      Given path 'articles'
      And params {limit: 10, offset: 0}
      When method Get
      Then status 200
      And match response.articles == "#[3]"
