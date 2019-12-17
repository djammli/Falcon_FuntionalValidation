Feature:005 RaveBatchUploader API Test

  Scenario:
    When User post request to API auth as <username> and <password>
    When User makes a GET request for '/rave/batch_uploader/jnj.mdsol.com/app_server_config_path'
    Then User receives '200' response code

    When User makes a GET request for '/rave/batch_uploader/jnj.mdsol.com/install_path'
    Then User receives '200' response code

    When User makes a GET request for '/rave/batch_uploader/jnj.mdsol.com/servers'
    Then User receives '200' response code

    When User makes a GET request for '/rave/batch_uploader/jnj.mdsol.com/service_names'
    Then User receives '200' response code

    When User makes a GET request for '/rave/batch_uploader/jnj.mdsol.com/connection_string'
    Then User receives '200' response code

    #When User makes a GET request for '/rave/batch_uploader/jnj.mdsol.com/details'
    #Then User receives '200' response code

    When User makes a GET request for '/rave/batch_uploader/jnj.mdsol.com/property_names_list'
    Then User receives '200' response code

    When User makes a GET request for '/rave/batch_uploader_ui/jnj.mdsol.com/install_path'
    Then User receives '200' response code

    When User makes a GET request for '/rave/batch_uploader_ui/jnj.mdsol.com/service_names'
    Then User receives '200' response code

    #When User makes a GET request for '/rave/batch_uploader_ui/jnj.mdsol.com/details'
    #Then User receives '200' response code

    When User makes a GET request for '/rave/batch_uploader_ui/jnj.mdsol.com/property_names_list'
    Then User receives '200' response code
