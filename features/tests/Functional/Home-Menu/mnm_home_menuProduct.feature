Feature: Product Menu Items Validation

  Scenario: Validate Product Menu
    Given User launch the application
    When  User enter valid user name and password
    And  User click on login button
    Then User should able to see Overview screen
    When User click on Menu item & verify breadcrum
      | menu_item                          | breadcrumb        |
      | Product > Rave > Rave URLs         | Rave URLs         |
      | Product > Rave > RaveX URLs        | RaveX URLs        |
      | Product > Rave > Neo URLs          | Neo URLs          |
      | Product > Rave > By Environment    | By Environment    |
      | Product > Rave > By Version        | By Version        |
      | Product > Rave > Sandbox Status    | Sandbox Status    |
      | Product > Rave > SLA Summary       | SLA Summary       |
      | Product > Rave > SG Segment Info   | SG Segment Info   |
      | Product > Rave > SG Active Studies | SG Active Studies |