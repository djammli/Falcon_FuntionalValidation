Feature:013 MaintceAPI_Event Schedule
  Scenario:
    When User post request to API auth as <username> and <password>
    When User makes a GET request for Maintenance event schedule  '/events/schedule'
    Then User receives '200' response code

