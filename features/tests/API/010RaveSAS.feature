Feature:010 RaveSAS API Test

  Scenario:
    When User post request to API auth as <username> and <password>
    When User makes a GET request for '/rave/sas/jnj.mdsol.com/install_path'
    Then User receives '200' response code

    When User makes a GET request for '/rave/sas/jnj.mdsol.com/servers'
    Then User receives '200' response code

    When User makes a GET request for '/rave/sas/jnj.mdsol.com/servers/id'
    Then User receives '200' response code

    When User makes a GET request for '/rave/sas/jnj.mdsol.com/connection_string'
    Then User receives '200' response code

    When User makes a GET request for '/rave/sas/jnj.mdsol.com/details'
    Then User receives '200' response code

    When User makes a GET request for '/rave/sas/jnj.mdsol.com/property_names_list'
    Then User receives '200' response code
