Feature: Storage Menu Items Validation

  Scenario: To Validate Storage Menu Item Validation
    Given User launch the application
    When  User enter valid user name and password
    And  User click on login button
    Then User should able to see Overview screen
    When User click on Menu item & verify breadcrum
      | menu_item                           | breadcrumb                 |
      | Storage > Storage Array Summary     | Storage Array Summary      |
      | Storage > Usage By Storage Type     | Usage By Storage Type      |
      | Storage > Storage Objects By Vendor     | Storage Objects By Vendor      |
      | Storage > Raw Disks By Rave URL     | Raw Disks By Rave URL      |