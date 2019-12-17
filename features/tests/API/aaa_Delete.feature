Feature: abbvie.mdsol.com

  @mytag
  Scenario Outline: Data Verification, abbvie.mdsol.com
  #Given the following <url>
  #When I have crawler servername <crawler>
  #Then I should find a falcon server with the same name <falcon>
  #Then User validate the app information for <url> url and <Server> server
    Then User validate the app information for <url> url and <Server> server
    Examples:
      | Server     | url              |
      | App1Server | abbvie.mdsol.com |
#|AppServer2|abbvie.mdsol.com|hdca23prappv002|hdca23prappv002|
#|AppServer3|abbvie.mdsol.com|hdca23prappv003|hdca23prappv003|
#|AppServer4|abbvie.mdsol.com|hdca23prappv004|hdca23prappv004|
#|AppServer5|abbvie.mdsol.com|hdca23prappv005|hdca23prappv005|
#|AppServer6|abbvie.mdsol.com|hdca23prappv006|hdca23prappv006|
#|Rave Db1|abbvie.mdsol.com|abbott|Abbott|
#|RaveVersion1|abbvie.mdsol.com|5.6.5.410|5.6.5.410|
#|ReportingSQLServer1|abbvie.mdsol.com|hdca23prdbsv003|hdca23prdbsv003|
#|SQLServer1|abbvie.mdsol.com|hdca23prdbsv001|hdca23prdbsv001|
#|WebServer1|abbvie.mdsol.com|hdca23prwebv001|hdca23prwebv001|
#|WebServer2|abbvie.mdsol.com|hdca23prwebv002|hdca23prwebv002|
#|WebServer3|abbvie.mdsol.com|hdca23prwebv003|hdca23prwebv003|
#|WebServer4|abbvie.mdsol.com|hdca23prwebv004|hdca23prwebv004|
#|WebServer5|abbvie.mdsol.com|hdca23prwebv005|hdca23prwebv005|
#|WebServer6|abbvie.mdsol.com|hdca23prwebv006|hdca23prwebv006|
