Feature: abbviedev.mdsol.com
@mytag
Scenario Outline: Data Verification, abbviedev.mdsol.com
When User post request to API auth as <username> and <password>
Then User validate the server information for <url> url <Server> server and <Crawler>
Examples:
| Server | url | Crawler |
|AppServer1|abbviedev.mdsol.com|hdcu10dvappv063|
|Rave Db1|abbviedev.mdsol.com|hdcvclnp0068|
|RaveVersion1|abbviedev.mdsol.com|5.6.5.508|
|SQLServer1|abbviedev.mdsol.com|hdca23dvdbsv001|
|WebServer1|abbviedev.mdsol.com|hdcu10dvwebv075|
