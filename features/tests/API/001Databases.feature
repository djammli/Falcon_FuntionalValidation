Feature:001 localDatabases API Test

  Scenario:
    When User post request to API auth as <username> and <password>
    And User makes a GET request for '/databases'
    Then User receives '200' response code
    And User makes a GET request for '/databases/names/hdc505lbdbsp002'
    Then User receives '200' response code
    And User makes a GET request for '/databases/servers'
    Then User receives '200' response code
    And User makes a GET request for '/databases/dbms_version_list'
    Then User receives '200' response code
    And User makes a GET request for '/databases/system_db_list'
    Then User receives '200' response code
    #Then User compares the response with <file>
