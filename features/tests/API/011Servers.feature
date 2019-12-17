Feature:011 Servers API Test

  Scenario:
    When User post request to API auth as <username> and <password>
    When User makes a GET request for '/servers'
    Then User receives '200' response code

    When User makes a GET request for '/servers/hdc505lbdbsp002/network'
    Then User receives '200' response code

    When User makes a GET request for '/servers/hdc505lbdbsp002/volume'
    Then User receives '200' response code

    When User makes a GET request for '/servers/hdc505lbdbsp002/software'
    Then User receives '200' response code

    When User makes a GET request for '/servers/hdc505lbdbsp002/service'
    Then User receives '200' response code

    When User makes a GET request for '/servers/environment_list'
    Then User receives '200' response code

    When User makes a GET request for '/servers/server_type_list'
    Then User receives '200' response code

    When User makes a GET request for '/servers/os_name_list'
    Then User receives '200' response code

    When User makes a GET request for '/servers/model_list'
    Then User receives '200' response code
