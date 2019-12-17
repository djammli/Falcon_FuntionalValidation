Feature:004 Rave API Test

  Scenario:
    When User post request to API auth as <username> and <password>
    When User makes a GET request for '/Rave/sites'
    Then User receives '200' response code

    When User makes a GET request for '/Rave/sites/url/hdc505lbdbsp002'
    Then User receives '200' response code

    When User makes a GET request for '/Rave/sites/jnj.mdsol.com/summary'
    Then User receives '200' response code

    When User makes a GET request for '/rave/sites/jnj.mdsol.com/app_servers'
    Then User receives '200' response code

    When User makes a GET request for '/rave/sites/jnj.mdsol.com/app_servers/properties'
    Then User receives '200' response code

    When User makes a GET request for '/rave/sites/jnj.mdsol.com/app_servers/property_names_list'
    Then User receives '200' response code

    When User makes a GET request for '/rave/sites/jnj.mdsol.com/web_servers'
    Then User receives '200' response code

    When User makes a GET request for '/rave/sites/jnj.mdsol.com/web_servers/properties'
    Then User receives '200' response code

    When User makes a GET request for '/rave/sites/jnj.mdsol.com/web_servers/property_names_list'
    Then User receives '200' response code

    When User makes a GET request for '/rave/sites/jnj.mdsol.com/viewers'
    Then User receives '200' response code

    When User makes a GET request for '/rave/sites/jnj.mdsol.com/servers'
    Then User receives '200' response code

    When User makes a GET request for '/rave/sites/backend_details'
    Then User receives '200' response code

    When User makes a GET request for '/rave/sites/jnj.mdsol.com/connection_string'
    Then User receives '200' response code

    When User makes a GET request for '/rave/sites/jnj.mdsol.com/rde_paths'
    Then User receives '200' response code

    When User makes a GET request for '/rave/sites/jnj.mdsol.com/dte_url'
    Then User receives '200' response code

    When User makes a GET request for '/rave/sites/jnj.mdsol.com/addons'
    Then User receives '200' response code

    When User makes a GET request for '/rave/sites/jnj.mdsol.com/addons/instances'
    Then User receives '200' response code

    When User makes a GET request for '/rave/sites/jnj.mdsol.com/addons/instances/details'
    Then User receives '200' response code

    When User makes a GET request for '/rave/sites/addons?addon_name=360%20Report'
    Then User receives '200' response code

    When User makes a GET request for '/rave/addon_names_list'
    Then User receives '200' response code
    #Then User compares the response with <file>
