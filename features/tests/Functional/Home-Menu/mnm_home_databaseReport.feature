@TestGroup1
Feature: mnm_home_databaseReport Validation

  Scenario: Validate mnm_home_databaseReport
    Given User launch the application
    When  User enter valid user name and password
    And  User click on login button
    Then User should able to see Overview screen
    When User click on Menu item & verify breadcrum
      | menu_item                           | breadcrumb                 |
      | Server > Physical v Virtual Servers | Physical v Virtual Servers |
    And User clicks on "Total Servers" link on the page
    Then User should be on the 'page title' page
    And User search for 'Search Term' in the filter
    #Then User should see the results with the search text 'Searching Term'
    And User navigate to the "last" page items
#    Then User should be on the last page
##    When User navigate to the "first" page items
#    Then User should be on the first page
#    When User select "20" entries to display
#    Then User should see the number of pages adjusted to display 20 entries per page