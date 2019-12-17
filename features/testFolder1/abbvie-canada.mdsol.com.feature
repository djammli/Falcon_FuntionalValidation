Feature: abbvie-canada.mdsol.com
@mytag
Scenario Outline: Data Verification, abbvie-canada.mdsol.com
When User post request to API auth as <username> and <password>
Then User validate the server information for <url> url <Server> server and <Crawler>
Examples:
| Server | url | Crawler |
|AppServer1|abbvie-canada.mdsol.com|hdcu02prappv931|
|Rave Db1|abbvie-canada.mdsol.com|hdcvcl03322|
|RaveVersion1|abbvie-canada.mdsol.com|5.6.5.427|
|SQLServer1|abbvie-canada.mdsol.com|hdcuniprdbsv812|
|WebServer1|abbvie-canada.mdsol.com|hdcu02prwebv931|
|WebServer2|abbvie-canada.mdsol.com|hdcu02prwebv932|
