Feature:009 RaveSafetyGateway API Test

  Scenario:
    When User post request to API auth as <username> and <password>
    When User makes a GET request for '/rave/safety_gateway/jnj.mdsol.com/management/urls'
    Then User receives '200' response code

    When User makes a GET request for '/rave/safety_gateway/jnj.mdsol.com/management/details'
    Then User receives '200' response code

    When User makes a GET request for '/rave/safety_gateway/jnj.mdsol.com/management/property_names_list'
    Then User receives '200' response code

    When User makes a GET request for '/rave/safety_gateway/jnj.mdsol.com/mapping/urls'
    Then User receives '200' response code

    When User makes a GET request for '/rave/safety_gateway/jnj.mdsol.com/mapping/details'
    Then User receives '200' response code

    When User makes a GET request for '/rave/safety_gateway/jnj.mdsol.com/mapping/property_names_list'
    Then User receives '200' response code

    When User makes a GET request for '/rave/safety_gateway/jnj.mdsol.com/segment_names'
    Then User receives '200' response code

    When User makes a GET request for '/rave/safety_gateway/jnj.mdsol.com/servers'
    Then User receives '200' response code

