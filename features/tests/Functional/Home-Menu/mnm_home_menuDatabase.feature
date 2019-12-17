Feature: mnm_home_menuDatabases Validation

  Scenario: Validate Database Menu
    Given User launch the application
    When  User enter valid user name and password
    And  User click on login button
    Then User should able to see Overview screen
    When User click on Menu item & verify breadcrum
      | menu_item                           | breadcrumb                 |
      | Database > SQL DB by Version                  | SQL DB by Version             |
      | Database >  SQL Server Count                  |  SQL Server Count             |
      | Database > DB Count by Product                  |DB Count by Product              |
      | Database > DB Server Count                  | DB Server Count              |
      | Database > All by Release                  | All by Release              |
      | Database > Size by Type of Database                  | Database Size By Type              |
      | Database > DB List                  | Database List              |