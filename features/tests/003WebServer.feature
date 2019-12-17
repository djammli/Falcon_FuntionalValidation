Feature:
  validate AppServer

  Scenario:
    When User post request to API auth as <username> and <password>
    When User makes a GET request for '/sites/{url}/web_servers'
    Then User receives '200' response code
    When User connect to the Falcon database
    And  User execute "SELECT S.URL,sv.ServerName AS Crawler
  FROM [verify].[site] S
  JOIN [verify].[WebConfig] web ON web.siteID = s.siteid
  JOIN [verify].[Server] sv ON sv.ServerID = web.Serverid" query
