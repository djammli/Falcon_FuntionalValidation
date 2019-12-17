Feature:007 RaveJReview API Test

  Scenario:
    When User post request to API auth as <username> and <password>
    When User makes a GET request for '/rave/jreview/jnj.mdsol.com/ir_servers'
    Then User receives '200' response code

    When User makes a GET request for '/rave/jreview/jnj.mdsol.com/ssl_servers'
    Then User receives '200' response code

    When User makes a GET request for '/rave/jreview/jnj.mdsol.com/web_servers'
    Then User receives '200' response code

    When User makes a GET request for '/rave/jreview/jnj.mdsol.com/version'
    Then User receives '200' response code

    When User makes a GET request for '/rave/jreview/jnj.mdsol.com/connection_string'
    Then User receives '200' response code

    When User makes a GET request for '/rave/jreview/jnj.mdsol.com/details'
    Then User receives '200' response code

    When User makes a GET request for '/rave/jreview/jnj.mdsol.com/property_names_list'
    Then User receives '200' response code
