Feature:sample APi Test

  Scenario:
    When User post request to API auth as <username> and <password>
    And User makes a GET request for '/rave/sites?return_key=url'
    Then User receives '200' response code
    Then User compares the response with <file>
