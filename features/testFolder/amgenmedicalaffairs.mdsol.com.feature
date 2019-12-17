Feature: amgenmedicalaffairs.mdsol.com
@mytag
Scenario Outline: Data Verification, amgenmedicalaffairs.mdsol.com
When User post request to API auth as <username> and <password>
Then User validate the server information for <url> url <Server> server and <Crawler>
Examples:
| Server | url | Crawler |
|AppServer1|amgenmedicalaffairs.mdsol.com|hdca02prappv033|
|AppServer2|amgenmedicalaffairs.mdsol.com|hdca02prappv034|
|AppServer3|amgenmedicalaffairs.mdsol.com|hdca02prappv035|
|AppServer4|amgenmedicalaffairs.mdsol.com|hdca02prappv036|
|AppServer5|amgenmedicalaffairs.mdsol.com|hdca02prappv037|
|AppServer6|amgenmedicalaffairs.mdsol.com|hdca02prappv038|
|Rave Db1|amgenmedicalaffairs.mdsol.com|amgenmedicalaffairs|
|RaveVersion1|amgenmedicalaffairs.mdsol.com|5.6.5.378|
|ReportingSQLServer1|amgenmedicalaffairs.mdsol.com|hdca02prdbsv008|
|SQLServer1|amgenmedicalaffairs.mdsol.com|hdca02prdbsv007|
|WebServer1|amgenmedicalaffairs.mdsol.com|hdca02prwebv033|
|WebServer2|amgenmedicalaffairs.mdsol.com|hdca02prwebv034|
|WebServer3|amgenmedicalaffairs.mdsol.com|hdca02prwebv035|
|WebServer4|amgenmedicalaffairs.mdsol.com|hdca02prwebv036|
|WebServer5|amgenmedicalaffairs.mdsol.com|hdca02prwebv037|
|WebServer6|amgenmedicalaffairs.mdsol.com|hdca02prwebv038|
