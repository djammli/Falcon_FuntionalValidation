Feature: abbottvascular.mdsol.com
@mytag
Scenario Outline: Data Verification, abbottvascular.mdsol.com
When User post request to API auth as <username> and <password>
Then User validate the server information for <url> url <Server> server and <Crawler>
Examples:
| Server | url | Crawler |
|AppServer1|abbottvascular.mdsol.com|hdca23prappv007|
|AppServer2|abbottvascular.mdsol.com|hdca23prappv008|
|AppServer3|abbottvascular.mdsol.com|hdca23prappv009|
|AppServer4|abbottvascular.mdsol.com|hdca23prappv010|
|AppServer5|abbottvascular.mdsol.com|hdca23prappv011|
|AppServer6|abbottvascular.mdsol.com|hdca23prappv012|
|Rave Db1|abbottvascular.mdsol.com|abbottvascular|
|RaveVersion1|abbottvascular.mdsol.com|5.6.5.299|
|SQLServer1|abbottvascular.mdsol.com|hdca23prdbsp001|
|WebServer1|abbottvascular.mdsol.com|hdca23prwebv007|
|WebServer2|abbottvascular.mdsol.com|hdca23prwebv008|
|WebServer3|abbottvascular.mdsol.com|hdca23prwebv009|
|WebServer4|abbottvascular.mdsol.com|hdca23prwebv010|
|WebServer5|abbottvascular.mdsol.com|hdca23prwebv011|
|WebServer6|abbottvascular.mdsol.com|hdca23prwebv012|
