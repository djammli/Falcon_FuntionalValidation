Feature: astellas-test-ravex.mdsol.com
@mytag
Scenario Outline: Data Verification, astellas-test-ravex.mdsol.com
When User post request to API auth as <username> and <password>
Then User validate the server information for <url> url <Server> server and <Crawler>
Examples:
| Server | url | Crawler |
|AppServer1|astellas-test-ravex.mdsol.com|hdcu10dvappv048|
|Rave Db1|astellas-test-ravex.mdsol.com|hdcvclnp0050|
|RaveVersion1|astellas-test-ravex.mdsol.com|5.6.5.508|
|ReportingSQLServer1|astellas-test-ravex.mdsol.com|hdca21dvdbsv002|
|SQLServer1|astellas-test-ravex.mdsol.com|hdca21dvdbsv002|
|SQLServer2|astellas-test-ravex.mdsol.com|blank|
|WebServer1|astellas-test-ravex.mdsol.com|hdcu10dvwebv048|
