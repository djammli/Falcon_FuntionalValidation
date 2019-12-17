Feature: Runbook

  Scenario: Runbook Item Validation
    Given User launch the application
    When  User enter valid user name and password
    And  User click on login button
    Then User should able to see Overview screen
    And User click on the Operations link(tab)
    When User click on Menu item & verify breadcrum
      | menu_item          | breadcrumb    |
      | Runbook  > Create     | Create         |
      | Runbook  > Edit     | Edit         |
      | Runbook  > Catalog     | Catalog         |
