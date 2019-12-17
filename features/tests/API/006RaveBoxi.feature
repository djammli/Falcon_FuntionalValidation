Feature:006 RaveBoxi API Test

  Scenario:
    When User post request to API auth as <username> and <password>
    When User makes a GET request for '/rave/boxi/jnj.mdsol.com/app_servers'
    Then User receives '200' response code

    When User makes a GET request for '/rave/boxi/jnj.mdsol.com/app/details'
    Then User receives '200' response code

    When User makes a GET request for '/rave/boxi/jnj.mdsol.com/app/property_names_list'
    Then User receives '200' response code

    When User makes a GET request for '/rave/boxi/jnj.mdsol.com/web_servers'
    Then User receives '200' response code

    When User makes a GET request for '/rave/boxi/jnj.mdsol.com/web/details'
    Then User receives '200' response code

    When User makes a GET request for '/rave/boxi/jnj.mdsol.com/web/property_names_list'
    Then User receives '200' response code

