Feature:002 Networks API Test

  Scenario:
    When User post request to API auth as <username> and <password>
    And User makes a GET request for '/networks/devices'
    Then User receives '200' response code
    And User makes a GET request for '/networks/devices/environment_list'
    Then User receives '200' response code
    And User makes a GET request for '/networks/devices/function_list'
    Then User receives '200' response code
    And User makes a GET request for '/networks/load_balancer_pools'
    Then User receives '200' response code
    And User makes a GET request for '/networks/load_balancer_pool_members'
    Then User receives '200' response code
    And User makes a GET request for '/networks/load_balancer_name_list'
    Then User receives '200' response code
    And User makes a GET request for '/networks/load_balancer_pool_name_list'
    Then User receives '200' response code
    And User makes a GET request for '/networks/load_balancer_pool_available_list'
    Then User receives '200' response code
    And User makes a GET request for '/networks/load_balancer_pool_enabled_list'
    Then User receives '200' response code
    And User makes a GET request for '/networks/load_balancer_pool_status_list'
    Then User receives '200' response code
    And User makes a GET request for '/networks/vlans'
    Then User receives '200' response code
    And User makes a GET request for '/networks/vlans/20'
    Then User receives '200' response code
    And User makes a GET request for '/networks/vlans/20/servers'
    Then User receives '200' response code
    And User makes a GET request for '/networks/vlans/id_name_list'
    Then User receives '200' response code
    And User makes a GET request for '/networks/vlans/name_list'
    Then User receives '200' response code
    And User makes a GET request for '/networks/dns_entries'
    Then User receives '200' response code

    #Then User compares the response with <file>
