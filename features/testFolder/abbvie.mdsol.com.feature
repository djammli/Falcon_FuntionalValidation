Feature: abbvie.mdsol.com
@mytag
Scenario Outline: Data Verification, abbvie.mdsol.com
When User post request to API auth as <username> and <password>
Then User validate the server information for <url> url <Server> server and <Crawler>
Examples:
| Server | url | Crawler |
|AppServer1|abbvie.mdsol.com|hdca23prappv001|
|AppServer2|abbvie.mdsol.com|hdca23prappv002|
|AppServer3|abbvie.mdsol.com|hdca23prappv003|
|AppServer4|abbvie.mdsol.com|hdca23prappv004|
|AppServer5|abbvie.mdsol.com|hdca23prappv005|
|AppServer6|abbvie.mdsol.com|hdca23prappv006|
|Rave Db1|abbvie.mdsol.com|abbott|
|RaveVersion1|abbvie.mdsol.com|5.6.5.410|
|ReportingSQLServer1|abbvie.mdsol.com|hdca23prdbsv003|
|SQLServer1|abbvie.mdsol.com|hdca23prdbsv001|
|WebServer1|abbvie.mdsol.com|hdca23prwebv001|
|WebServer2|abbvie.mdsol.com|hdca23prwebv002|
|WebServer3|abbvie.mdsol.com|hdca23prwebv003|
|WebServer4|abbvie.mdsol.com|hdca23prwebv004|
|WebServer5|abbvie.mdsol.com|hdca23prwebv005|
|WebServer6|abbvie.mdsol.com|hdca23prwebv006|
