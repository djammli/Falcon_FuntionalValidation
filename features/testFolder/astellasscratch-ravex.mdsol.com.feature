Feature: astellasscratch-ravex.mdsol.com
@mytag
Scenario Outline: Data Verification, astellasscratch-ravex.mdsol.com
When User post request to API auth as <username> and <password>
Then User validate the server information for <url> url <Server> server and <Crawler>
Examples:
| Server | url | Crawler |
|AppServer1|astellasscratch-ravex.mdsol.com|hdca21dvappv005|
|Rave Db1|astellasscratch-ravex.mdsol.com|hdcvclnp0065|
|RaveVersion1|astellasscratch-ravex.mdsol.com|5.6.5.508|
|ReportingSQLServer1|astellasscratch-ravex.mdsol.com|hdca21dvdbsv002|
|SQLServer1|astellasscratch-ravex.mdsol.com|hdca21dvdbsv002|
|SQLServer2|astellasscratch-ravex.mdsol.com|blank|
|WebServer1|astellasscratch-ravex.mdsol.com|hdca21dvwebv005|
