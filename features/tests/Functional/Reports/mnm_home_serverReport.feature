Feature: Server Report Validation

  Scenario: Validate server report
    Given User launch the application
    When  User enter valid user name and password
    And  User click on login button
    Then User should able to see Overview screen
    When User click on Menu item & verify breadcrum
      | menu_item                           | breadcrumb                 |
      | Server > Physical v Virtual Servers | Physical v Virtual Servers |
    ##And User clicks on "Total Servers" link on the page
    And User clicks on the Total Servers link on the page
    Then User should be on the 'Physical v Virtual Servers' page
    And User search for 'Microsoft Windows Server 2012 (64-bit)' in the filter
    #Then User should see the results with the search text 'Searching Term'
    And User navigate to the "last" page items
    Then User should be on the "last" page
    When User navigate to the "first" page items
    Then User should be on the "first" page
    When User select "25" entries to display
    Then User should see the number of pages adjusted to display "25" entries per page