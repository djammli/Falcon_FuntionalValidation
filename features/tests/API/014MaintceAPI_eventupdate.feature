Feature:012 MaintceAPI_lookup

  Scenario:
    When User post request to API auth as <username> and <password>
    When User makes a GET request for Maintenance update '/events/update'
    Then User receives '200' response code
