Feature: Network Menu Items Validation

  Scenario: To Validate Network menu items
    Given User launch the application
    When  User enter valid user name and password
    And  User click on login button
    Then User should able to see Overview screen
    When User click on Menu item & verify breadcrum
      | menu_item                           | breadcrumb                 |
      | Network > Firewall Rules            | Firewall Rules             |
      | Network > VIP Lookup            | VIP Lookup             |
      | Network > DNS Entries            | DNS Entries             |
      | Network > VPN Mapping            | VPN Mapping             |
      | Network > VLAN Usage            | VLAN Usage             |
      | Network > VLAN Lookup By IP            | VLAN Lookup By IP            |
      | Network > Inventory            | Inventory             |
