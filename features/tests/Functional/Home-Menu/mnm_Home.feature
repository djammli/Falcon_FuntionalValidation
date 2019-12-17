@TestGroup1
Feature: Login
  Scenario: Login into mnm portal
    Given User launch the application
    When  User enter valid user name and password
    And  User click on login button
    Then User should able to see Overview screen