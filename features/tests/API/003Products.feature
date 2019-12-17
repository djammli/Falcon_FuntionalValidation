Feature:003 Products API Test

  Scenario:
    When User post request to API auth as <username> and <password>
    And User makes a GET request for '/products/Rave/account/jnj.mdsol.com'
    Then User receives '200' response code
    And User makes a GET request for '/products/Rave/password/jnj.mdsol.com'
    Then User receives '200' response code
    And User makes a GET request for '/products/Rave/install_path/jnj.mdsol.com'
    Then User receives '200' response code
    And User makes a GET request for '/products/Rave/connection_string/jnj.mdsol.com'
    Then User receives '200' response code
    And User makes a GET request for '/products/product_property_name_list'
    Then User receives '200' response code
    And User makes a GET request for '/products/product_service_property_name_list'
    Then User receives '200' response code
    And User makes a GET request for '/products/product_database_property_name_list'
    Then User receives '200' response code
    And User makes a GET request for '/products/account_category_list'
    Then User receives '200' response code
    And User makes a GET request for '/products/service_category_list'
    Then User receives '200' response code
    And User makes a GET request for '/products/pm_names_list'
    Then User receives '200' response code
    #Then User compares the response with <file>
