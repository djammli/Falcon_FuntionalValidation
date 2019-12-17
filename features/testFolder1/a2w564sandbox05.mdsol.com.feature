Feature: a2w564sandbox05.mdsol.com
@mytag
Scenario Outline: Data Verification, a2w564sandbox05.mdsol.com
When User post request to API auth as <username> and <password>
Then User validate the server information for <url> url <Server> server and <Crawler>
Examples:
| Server | url | Crawler |
|CrawlerOnly1|a2w564sandbox05.mdsol.com|All|
