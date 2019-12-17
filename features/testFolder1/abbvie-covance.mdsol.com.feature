Feature: abbvie-covance.mdsol.com
@mytag
Scenario Outline: Data Verification, abbvie-covance.mdsol.com
When User post request to API auth as <username> and <password>
Then User validate the server information for <url> url <Server> server and <Crawler>
Examples:
| Server | url | Crawler |
|AppServer1|abbvie-covance.mdsol.com|hdcu10prappv345|
|Rave Db1|abbvie-covance.mdsol.com|hdcvclpr0343|
|RaveVersion1|abbvie-covance.mdsol.com|5.6.5.410|
|SQLServer1|abbvie-covance.mdsol.com|hdcu10prdbsv100|
|WebServer1|abbvie-covance.mdsol.com|hdcu10prwebv701|
|WebServer2|abbvie-covance.mdsol.com|hdcu10prwebv702|
