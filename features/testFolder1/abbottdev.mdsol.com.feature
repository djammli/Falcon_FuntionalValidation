Feature: abbottdev.mdsol.com
@mytag
Scenario Outline: Data Verification, abbottdev.mdsol.com
When User post request to API auth as <username> and <password>
Then User validate the server information for <url> url <Server> server and <Crawler>
Examples:
| Server | url | Crawler |
|AppServer1|abbottdev.mdsol.com|hdcabtdvappv001|
|Rave Db1|abbottdev.mdsol.com|abbottdev|
|RaveVersion1|abbottdev.mdsol.com|5.6.5.427|
|SQLServer1|abbottdev.mdsol.com|hdca23dvdbsv002|
|WebServer1|abbottdev.mdsol.com|hdcabtdvwebv001|
