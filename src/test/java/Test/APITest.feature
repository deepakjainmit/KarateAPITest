Feature: API test
  Background:
    * url 'https://gorest.co.in'
    * header Authorization = 'Bearer vymTXK9cDHiVxwVgdRcPn3UoDreZ5a-x5ZgR'
  @test
  Scenario: Test users by Name---
    Given path '/public-api/users'
    And param first_name = 'john'
    When method get
    Then status 200
    And def UserResponse = response
    And def name = 'Deepak'
   # And def firstName = UserResponse.result[*].first_name
    Then match UserResponse.result[*].first_name contains ["Johnnie"]