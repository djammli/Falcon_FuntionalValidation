Feature: End Of Life Menu Items Validation

  Scenario: Validate End of Life Menu Items
    Given User launch the application
    When  User enter valid user name and password
    And  User click on login button
    Then User should able to see Overview screen
    When User click on Menu item & verify breadcrum
      | menu_item                           | breadcrumb                 |
      | End of Life > OS by Date            | OS by Date                 |
      | End of Life >  Database By Date            |  Database By Date                 |
      | End of Life > Rave URL by Environment            | Rave URL by Environment                 |
      | End of Life > Impacted URLs            | Impacted URLs                 |



