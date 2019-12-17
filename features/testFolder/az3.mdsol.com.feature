Feature: az3.mdsol.com
@mytag
Scenario Outline: Data Verification, az3.mdsol.com
When User post request to API auth as <username> and <password>
Then User validate the server information for <url> url <Server> server and <Crawler>
Examples:
| Server | url | Crawler |
|AppServer1|az3.mdsol.com|hdca19prappv031|
|AppServer2|az3.mdsol.com|hdca19prappv032|
|AppServer3|az3.mdsol.com|hdca19prappv033|
|AppServer4|az3.mdsol.com|hdca19prappv034|
|AppServer5|az3.mdsol.com|hdca19prappv035|
|AppServer6|az3.mdsol.com|hdca19prappv036|
|Rave Db1|az3.mdsol.com|az3|
|RaveVersion1|az3.mdsol.com|5.6.5.356|
|ReportingSQLServer1|az3.mdsol.com|hdca19prdbsv015|
|SQLServer1|az3.mdsol.com|hdca19prdbsv014|
|WebServer1|az3.mdsol.com|hdca19prwebv031|
|WebServer2|az3.mdsol.com|hdca19prwebv032|
|WebServer3|az3.mdsol.com|hdca19prwebv033|
|WebServer4|az3.mdsol.com|hdca19prwebv034|
|WebServer5|az3.mdsol.com|hdca19prwebv035|
|WebServer6|az3.mdsol.com|hdca19prwebv036|
