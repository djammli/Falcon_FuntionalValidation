Feature: astellas.mdsol.com
@mytag
Scenario Outline: Data Verification, astellas.mdsol.com
When User post request to API auth as <username> and <password>
Then User validate the server information for <url> url <Server> server and <Crawler>
Examples:
| Server | url | Crawler |
|AppServer1|astellas.mdsol.com|hdca21prappv001|
|AppServer2|astellas.mdsol.com|hdca21prappv002|
|AppServer3|astellas.mdsol.com|hdca21prappv003|
|AppServer4|astellas.mdsol.com|hdca21prappv004|
|AppServer5|astellas.mdsol.com|hdca21prappv005|
|AppServer6|astellas.mdsol.com|hdca21prappv006|
|Rave Db1|astellas.mdsol.com|astellas|
|RaveVersion1|astellas.mdsol.com|5.6.5.299|
|ReportingSQLServer1|astellas.mdsol.com|hdca21prdbsv002|
|SQLServer1|astellas.mdsol.com|hdca21prdbsv001|
|WebServer1|astellas.mdsol.com|hdca21prwebv001|
|WebServer2|astellas.mdsol.com|hdca21prwebv002|
|WebServer3|astellas.mdsol.com|hdca21prwebv003|
|WebServer4|astellas.mdsol.com|hdca21prwebv004|
|WebServer5|astellas.mdsol.com|hdca21prwebv005|
|WebServer6|astellas.mdsol.com|hdca21prwebv006|
