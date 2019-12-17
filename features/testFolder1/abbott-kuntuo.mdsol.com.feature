Feature: abbott-kuntuo.mdsol.com
@mytag
Scenario Outline: Data Verification, abbott-kuntuo.mdsol.com
When User post request to API auth as <username> and <password>
Then User validate the server information for <url> url <Server> server and <Crawler>
Examples:
| Server | url | Crawler |
|AppServer1|abbott-kuntuo.mdsol.com|hdcu03prappv551|
|Rave Db1|abbott-kuntuo.mdsol.com|hdcvcl01169|
|RaveVersion1|abbott-kuntuo.mdsol.com|5.6.5.335|
|SQLServer1|abbott-kuntuo.mdsol.com|hdcuniprdbsv891|
|WebServer1|abbott-kuntuo.mdsol.com|hdcu03prwebv551|
|WebServer2|abbott-kuntuo.mdsol.com|hdcu03prwebv552|
