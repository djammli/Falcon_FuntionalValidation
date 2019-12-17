Feature:
  validate Reporting SQL Server

  Scenario:
    When User post request to API auth as <username> and <password>
    When User makes a GET request for '/Rave/sites'
    Then User receives '200' response code
    When User connect to the Falcon database
    And  User execute "SELECT S.Url,SV.ServerName AS Crawler
  FROM verify.site S
  JOIN verify.DBConfig DB ON DB.siteID = S.siteID
  JOIN verify.Server SV ON Sv.ServerID = DB.ServerID
  JOIN verify.DatabaseType DBT ON DBT.DatabaseTypeID = DB.DatabaseTypeID
  WHERE  DBT.DatabaseTypeNAME ='Reporting Db'
    " query
