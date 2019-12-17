Feature: serverByEnvironmentReport Validation

  Scenario Outline: Validate serverByEnvironmentReport
    Given User launch the application
    When  User enter valid user name and password
    And  User click on login button
    Then User should able to see Overview screen
    When User click on Menu item & verify breadcrum
      | menu_item                           | breadcrumb                 |
      | Server > By Environment |By Environment|
    ##And User clicks on "Total Servers" link on the page
    And User clicks on the Total Servers link on the page
    Then User should be on the 'By Environment' page
    And User search for '<search_term>' in the filter
    #Then User should see the results with the search text 'Searching Term'
    And User navigate to the "<page_num_2>" page items
    Then User should be on the "<page_num_2>" page
    When User navigate to the "<page_num_1>" page items
    Then User should be on the "<page_num_1>" page
    When User select "<entries>" entries to display
    Then User should see the number of pages adjusted to display "<entries>" entries per page
    Examples:
    |page_num_1|page_num_2|entries|search_term                           |
    |first     |last      |25     |Infrastructure|