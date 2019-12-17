Feature: 4sc-icon.mdsol.com
@mytag
Scenario Outline: Data Verification, 4sc-icon.mdsol.com
When User post request to API auth as <username> and <password>
Then User validate the server information for <url> url <Server> server and <Crawler>
Examples:
| Server | url | Crawler |
|AppServer1|4sc-icon.mdsol.com|hdcu03prappv219|
|Rave Db1|4sc-icon.mdsol.com|hdcvcl04129|
|RaveVersion1|4sc-icon.mdsol.com|5.6.5.299|
|SQLServer1|4sc-icon.mdsol.com|hdcuniprdbsv849|
|WebServer1|4sc-icon.mdsol.com|hdcu03prwebv219|
|WebServer2|4sc-icon.mdsol.com|hdcu03prwebv220|
