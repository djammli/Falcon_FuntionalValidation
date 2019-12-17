Feature:
  validate App Server

  Scenario:
    When User connect to the Falcon database
    And  User execute "SELECT distinct[Url],Falcon, Crawler FROM [Falcon].[verify].[SiteVerificationDetail] " query
    When User post request to API auth as <username> and <password>
    When User makes a GET request for each site and validate the app servers info1
