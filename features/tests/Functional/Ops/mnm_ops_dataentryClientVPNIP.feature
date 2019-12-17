Feature: mnm_ops_dataentryClientVPNIP Validation

  Scenario Outline: Validate mnm_ops_dataentryClientVPNIP
    Given User launch the application
    When  User enter valid user name and password
    And  User click on login button
    Then User should able to see Overview screen
    #And User click on the Operations link(tab)
    When User click on Menu item & verify breadcrum
      | menu_item                           | breadcrumb                 |
      | Data Entry > Client VPN IP| Client VPN IP |
    ##And User clicks on "Total Servers" link on the page
    ##And User clicks on the Total Servers link on the page
    Then User should be on the 'Client VPN IP' page
    And User search for '<search_term>' in the filter
    #Then User should see the results with the search text 'Searching Term'
    And User navigate to the "<page_num_2>" page items
    Then User should be on the "<page_num_2>" page
    When User navigate to the "<page_num_1>" page items
    Then User should be on the "<page_num_1>" page
    #When User select runnbook "<entries>" entries to display
    #Then User should see the number of pages adjusted to display "<entries>" entries per page
    Examples:
      |page_num_1|page_num_2|entries|search_term                           |
      |first     |last      |25     |10	|