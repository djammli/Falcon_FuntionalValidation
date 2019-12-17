Feature:sample APi Test

  Scenario:
    When User post request to API auth as <username> and <password>
    And User makes a GET request for '/servers/environment_list'
    Then User receives '200' response code
