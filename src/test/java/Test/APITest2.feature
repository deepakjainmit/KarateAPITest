Feature: Test other feature call
  Background:
    * def myfeature = call read('APITest.feature')
    * def res = myfeature.UserResponse
    * def name = myfeature.name
    Scenario: to test other feature call
      Then print 'response-----', res
      And print 'name---', name

