Feature: az2.mdsol.com
@mytag
Scenario Outline: Data Verification, az2.mdsol.com
When User post request to API auth as <username> and <password>
Then User validate the server information for <url> url <Server> server and <Crawler>
Examples:
| Server | url | Crawler |
|AppServer1|az2.mdsol.com|hdca19prappv021|
|AppServer2|az2.mdsol.com|hdca19prappv022|
|AppServer3|az2.mdsol.com|hdca19prappv027|
|AppServer4|az2.mdsol.com|hdca19prappv028|
|AppServer5|az2.mdsol.com|hdca19prappv029|
|AppServer6|az2.mdsol.com|hdca19prappv030|
|Rave Db1|az2.mdsol.com|az2|
|RaveVersion1|az2.mdsol.com|5.6.5.356|
|ReportingSQLServer1|az2.mdsol.com|hdca19prdbsv008|
|SQLServer1|az2.mdsol.com|hdca19prdbsv011|
|WebServer1|az2.mdsol.com|hdca19prwebv021|
|WebServer2|az2.mdsol.com|hdca19prwebv022|
|WebServer3|az2.mdsol.com|hdca19prwebv027|
|WebServer4|az2.mdsol.com|hdca19prwebv028|
|WebServer5|az2.mdsol.com|hdca19prwebv029|
|WebServer6|az2.mdsol.com|hdca19prwebv030|
