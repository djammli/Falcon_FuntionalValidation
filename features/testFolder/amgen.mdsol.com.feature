Feature: amgen.mdsol.com
@mytag
Scenario Outline: Data Verification, amgen.mdsol.com
When User post request to API auth as <username> and <password>
Then User validate the server information for <url> url <Server> server and <Crawler>
Examples:
| Server | url | Crawler |
|AppServer1|amgen.mdsol.com|hdca02prappv027|
|AppServer2|amgen.mdsol.com|hdca02prappv028|
|AppServer3|amgen.mdsol.com|hdca02prappv029|
|AppServer4|amgen.mdsol.com|hdca02prappv030|
|AppServer5|amgen.mdsol.com|hdca02prappv031|
|AppServer6|amgen.mdsol.com|hdca02prappv032|
|Rave Db1|amgen.mdsol.com|amgen|
|RaveVersion1|amgen.mdsol.com|5.6.5.378|
|ReportingSQLServer1|amgen.mdsol.com|hdca02prdbsv008|
|SQLServer1|amgen.mdsol.com|hdca02prdbsv007|
|WebServer1|amgen.mdsol.com|hdca02prwebv027|
|WebServer2|amgen.mdsol.com|hdca02prwebv028|
|WebServer3|amgen.mdsol.com|hdca02prwebv029|
|WebServer4|amgen.mdsol.com|hdca02prwebv030|
|WebServer5|amgen.mdsol.com|hdca02prwebv031|
|WebServer6|amgen.mdsol.com|hdca02prwebv032|
