Feature: mnm_ops_maintenanceScheduleNew Validation

  Scenario Outline: Validate mnm_ops_maintenanceScheduleNew
    Given User launch the application
    When  User enter valid user name and password
    And  User click on login button
    Then User should able to see Overview screen
    And User click on the Operations link(tab)
    When User click on Menu item & verify breadcrum
      | menu_item                           | breadcrumb                 |
      | Maintenance >  Schedule New |  Schedule New |
    ##And User clicks on "Total Servers" link on the page
    ##And User clicks on the Total Servers link on the page
    Then User should be on the 'Schedule New' page
    And User enter valid data in the  Schedule New page
    And User click on the save button in the schedule New page
    Then User should see the Schedule is created and show page is displayed
    Examples:
      |page_num_1|page_num_2|entries|search_term                           |
      |first     |last      |25     |Production|