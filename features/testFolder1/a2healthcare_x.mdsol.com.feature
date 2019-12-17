Feature: a2healthcare_x.mdsol.com
@mytag
Scenario Outline: Data Verification, a2healthcare_x.mdsol.com
When User post request to API auth as <username> and <password>
Then User validate the server information for <url> url <Server> server and <Crawler>
Examples:
| Server | url | Crawler |
|AppServer1|a2healthcare_x.mdsol.com|hdcunidvappv309|
|Rave Db1|a2healthcare_x.mdsol.com|hdcvcl03459|
|RaveVersion1|a2healthcare_x.mdsol.com|5.6.5.508|
|SQLServer1|a2healthcare_x.mdsol.com|hdcunidvdbsv767|
|WebServer1|a2healthcare_x.mdsol.com|hdcunidvwebv309|
