Feature: Virtualization Menu Items Validation

  Scenario: To Validate Virtualization menu items
    Given User launch the application
    When  User enter valid user name and password
    And  User click on login button
    Then User should able to see Overview screen
    When User click on Menu item & verify breadcrum
      | menu_item                           | breadcrumb                 |
      | Virtualization > VMWare > Summary   | Summary                    |
      | Virtualization > VMWare > Capacity   | Capacity                    |
      | Virtualization > VMWare > Host   | Host                    |


