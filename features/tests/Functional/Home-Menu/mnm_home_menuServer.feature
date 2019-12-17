Feature: Server Menu Items Validation

  Scenario: To Validate Server Menu Items
    Given User launch the application
    When  User enter valid user name and password
    And  User click on login button
    Then User should able to see Overview screen
    When User click on Menu item & verify breadcrum
      | menu_item                           | breadcrumb                 |
      | Server > Physical v Virtual Servers | Physical v Virtual Servers |
      | Server > By OS                      | By OS                      |
      | Server > By Model                   | By Model                   |
      | Server > By Function                   | By Function                   |
      | Server > CPU By Function                   | CPU By Function                   |
      | Server > Memory By Function                   | Memory By Function                   |
      #| Server > By Environment                   | By Environment                   |
