Feature: Login

  Scenario: Login into mnm portal
    Given User launch the application
    When  User enter valid user name and password
    And  User click on login button
    Then User verifies the row summary
      | row_name         | db_value |
      | Servers          |        |


    #Then User should able to validate Servers info
    #And User should able to validate Database Servers info