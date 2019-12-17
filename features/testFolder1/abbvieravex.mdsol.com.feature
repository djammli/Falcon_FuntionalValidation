Feature: abbvieravex.mdsol.com
@mytag
Scenario Outline: Data Verification, abbvieravex.mdsol.com
When User post request to API auth as <username> and <password>
Then User validate the server information for <url> url <Server> server and <Crawler>
Examples:
| Server | url | Crawler |
|AppServer1|abbvieravex.mdsol.com|hdca23prappv013|
|Rave Db1|abbvieravex.mdsol.com|hdcvclpr0391|
|RaveVersion1|abbvieravex.mdsol.com|5.6.5.508|
|SQLServer1|abbvieravex.mdsol.com|hdca23prdbsv004|
|WebServer1|abbvieravex.mdsol.com|hdca23prwebv013|
|WebServer2|abbvieravex.mdsol.com|hdca23prwebv014|
