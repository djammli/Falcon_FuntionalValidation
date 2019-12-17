Feature: DataEntry

  Scenario: Data Entry Item Validation
    Given User launch the application
    When  User enter valid user name and password
    And  User click on login button
    Then User should able to see Overview screen
    And User click on the Operations link(tab)
    When User click on Menu item & verify breadcrum
      | menu_item          | breadcrumb    |
      | Data Entry  >  Software End of Life Date     |  Software End of Life Date         |
      | Data Entry  > Client VPN IP     | Client VPN IP         |
      | Data Entry  > Salesforce Site Validation     | Salesforce Site Validation         |
      | Data Entry  > Site Backend Database Name and VPN     | Site Backend Database Name and VPN         |
      | Data Entry  > Project Data Entry >  Project Type      |  Project Type        |
      | Data Entry  > Project Data Entry >  Project Environment      |  Project Environment        |
      | Data Entry  > Project Data Entry >  Project      |  Project        |

