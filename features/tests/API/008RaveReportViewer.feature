Feature:008 RaveReportViewer API Test

  Scenario:
    When User post request to API auth as <username> and <password>
    When User makes a GET request for '/rave/report_viewer/jnj.mdsol.com/locations'
    Then User receives '200' response code

    When User makes a GET request for '/rave/report_viewer/jnj.mdsol.com/servers'
    Then User receives '200' response code

    When User makes a GET request for '/rave/report_viewer/jnj.mdsol.com/urls'
    Then User receives '200' response code

    When User makes a GET request for '/rave/report_viewer/jnj.mdsol.com/details'
    Then User receives '200' response code

    When User makes a GET request for '/rave/report_viewer/jnj.mdsol.com/property_names_list'
    Then User receives '200' response code
