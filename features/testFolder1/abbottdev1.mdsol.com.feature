Feature: abbottdev1.mdsol.com
@mytag
Scenario Outline: Data Verification, abbottdev1.mdsol.com
When User post request to API auth as <username> and <password>
Then User validate the server information for <url> url <Server> server and <Crawler>
Examples:
| Server | url | Crawler |
|AppServer1|abbottdev1.mdsol.com|hdca23dvappv001|
|Rave Db1|abbottdev1.mdsol.com|abbottdev1|
|RaveVersion1|abbottdev1.mdsol.com|5.6.5.111|
|SQLServer1|abbottdev1.mdsol.com|hdca23dvdbsv002|
|WebServer1|abbottdev1.mdsol.com|hdca23dvwebv001|
