Feature:012 MaintceAPI_lookup

  Scenario:
    When User post request to API auth as <username> and <password>
    When User makes a GET request for Maintenance startdate '/events/start/15003'
    Then User receives '200' response code
