Feature: mnm_home_favorites Validation

  Scenario: Validate mnm_home_favorites Menu
    Given User launch the application
    When  User enter valid user name and password
    And  User click on login button
    Then User should able to see Overview screen
    When User click on Menu item & verify breadcrum
      | menu_item                           | breadcrumb            |
      | Database > Size by Type of Database | Database Size By Type |
    And  User click on username link
    And click on the add page to favorites
    And click on the save button in the favorites
    And click on the Favorites link on the left navigation
    Then User verifies "Database Size By Type" is displayed under "Favorites" left navigation
    And  User click on username link
    And click on the "Manage Favorites" menu link
    When User deletes "Database Size By Type" from favorites list
    And User click on "Delete" button on the confirmation box
    Then User verifies "Database Size By Type" is removed under "Favorites" left navigation
#    And Click an the favories sublink is this the fav that is added anna?

#    Then validate favorits

