Feature: az1.mdsol.com
@mytag
Scenario Outline: Data Verification, az1.mdsol.com
When User post request to API auth as <username> and <password>
Then User validate the server information for <url> url <Server> server and <Crawler>
Examples:
| Server | url | Crawler |
|AppServer1|az1.mdsol.com|hdca19prappv001|
|AppServer2|az1.mdsol.com|hdca19prappv002|
|AppServer3|az1.mdsol.com|hdca19prappv003|
|AppServer4|az1.mdsol.com|hdca19prappv004|
|AppServer5|az1.mdsol.com|hdca19prappv005|
|AppServer6|az1.mdsol.com|hdca19prappv006|
|AppServer7|az1.mdsol.com|hdca19prappv007|
|AppServer8|az1.mdsol.com|hdca19prappv008|
|AppServer9|az1.mdsol.com|hdca19prappv009|
|AppServer10|az1.mdsol.com|hdca19prappv010|
|Rave Db1|az1.mdsol.com|az1|
|RaveVersion1|az1.mdsol.com|5.6.5.356|
|ReportingSQLServer1|az1.mdsol.com|hdca19prdbsv012|
|SQLServer1|az1.mdsol.com|hdca19prdbsv011|
|WebServer1|az1.mdsol.com|hdca19prwebv001|
|WebServer2|az1.mdsol.com|hdca19prwebv002|
|WebServer3|az1.mdsol.com|hdca19prwebv003|
|WebServer4|az1.mdsol.com|hdca19prwebv004|
|WebServer5|az1.mdsol.com|hdca19prwebv005|
|WebServer6|az1.mdsol.com|hdca19prwebv006|
|WebServer7|az1.mdsol.com|hdca19prwebv007|
|WebServer8|az1.mdsol.com|hdca19prwebv008|
|WebServer9|az1.mdsol.com|hdca19prwebv009|
|WebServer10|az1.mdsol.com|hdca19prwebv010|
