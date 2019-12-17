Feature: Lookup Menu Items Validation

  Scenario: Validate Lookup Menu
    Given User launch the application
    When  User enter valid user name and password
    And  User click on login button
    Then User should able to see Overview screen
    When User click on Menu item