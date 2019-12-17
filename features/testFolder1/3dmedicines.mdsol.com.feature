Feature: 3dmedicines.mdsol.com
@mytag
Scenario Outline: Data Verification, 3dmedicines.mdsol.com
When User post request to API auth as <username> and <password>
Then User validate the server information for <url> url <Server> server and <Crawler>
Examples:
| Server | url | Crawler |
|AppServer1|3dmedicines.mdsol.com|hdcu03prappv257|
|Rave Db1|3dmedicines.mdsol.com|hdcvcl04148|
|RaveVersion1|3dmedicines.mdsol.com|5.6.5.299|
|SQLServer1|3dmedicines.mdsol.com|hdcuniprdbsv853|
|WebServer1|3dmedicines.mdsol.com|hdcu03prwebv257|
|WebServer2|3dmedicines.mdsol.com|hdcu03prwebv258|
