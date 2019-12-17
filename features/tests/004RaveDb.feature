Feature:
  validate Rave Db

  Scenario:
    When User post request to API auth as <username> and <password>
    When User makes a GET request for '/Rave/sites'
    Then User receives '200' response code
    When User connect to the Falcon database
    And  User execute "SELECT  s.URL, db.databasename
  AS Crawler  FROM verify.site s
  LEFT JOIN verify.DBConfig db ON db.siteID = S.siteID
  LEFT JOIN verify.DatabaseType dbt ON dbt.DatabaseTypeID = db.DatabaseTypeID
  WHERE DBT.DatabaseTypeNAME ='Rave Db'
  " query
