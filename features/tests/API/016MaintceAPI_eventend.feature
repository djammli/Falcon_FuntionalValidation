Feature:016 MaintceAPI_eventend

  Scenario:
    When User post request to API auth as <username> and <password>
    When User makes a GET request for Maintenance eventend '/events/start/15003'
    Then User receives '200' response code
