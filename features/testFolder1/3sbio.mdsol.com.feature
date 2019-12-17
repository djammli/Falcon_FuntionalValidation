Feature: 3sbio.mdsol.com
@mytag
Scenario Outline: Data Verification, 3sbio.mdsol.com
When User post request to API auth as <username> and <password>
Then User validate the server information for <url> url <Server> server and <Crawler>
Examples:
| Server | url | Crawler |
|AppServer1|3sbio.mdsol.com|hdcu02prappv421|
|Rave Db1|3sbio.mdsol.com|hdcvclb089|
|RaveVersion1|3sbio.mdsol.com|5.6.5.192|
|SQLServer1|3sbio.mdsol.com|hdcuniprdbsv744|
|WebServer1|3sbio.mdsol.com|hdcu02prwebv421|
|WebServer2|3sbio.mdsol.com|hdcu02prwebv422|
