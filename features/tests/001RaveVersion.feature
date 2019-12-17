Feature:
  validate RaveVersion

  Scenario: validate RaveVersion
    When User connect to the Falcon database
    And  User execute "SELECT url, raveversion AS Crawler from verify.site" query
    When User post request to API auth as <username> and <password>
    When User makes a GET request for each site and validate the site info
