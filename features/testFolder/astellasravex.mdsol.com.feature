Feature: astellasravex.mdsol.com
@mytag
Scenario Outline: Data Verification, astellasravex.mdsol.com
When User post request to API auth as <username> and <password>
Then User validate the server information for <url> url <Server> server and <Crawler>
Examples:
| Server | url | Crawler |
|AppServer1|astellasravex.mdsol.com|hdcu10prappv328|
|Rave Db1|astellasravex.mdsol.com|hdcvclpr0326|
|RaveVersion1|astellasravex.mdsol.com|5.6.5.508|
|ReportingSQLServer1|astellasravex.mdsol.com|hdcu10prdbsv096|
|SQLServer1|astellasravex.mdsol.com|hdcu10prdbsv096|
|SQLServer2|astellasravex.mdsol.com|blank|
|WebServer1|astellasravex.mdsol.com|hdcu10prwebv667|
|WebServer2|astellasravex.mdsol.com|hdcu10prwebv668|
