require 'minitest/reporters'

When(/^User post request to API auth as (.*) and (.*)$/) do |username, password|
  if $bearerToken == nil
    url = URI(ENV['API_URL'].to_s('v1', "token"))
    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    request = Net::HTTP::Post.new(url)
    request["Content-Type"] = 'application/x-www-form-urlencoded'
    request["Cache-Control"] = 'no-cache'
    request.body = ENV['APIAUTH']
    $response = http.request(request)
    if $response.code == '200'
      #puts " test is sucessful"
      result = JSON.parse($response.body)
      $bearerToken = 'bearer ' + result['access_token']
      #puts $bearerToken
    else
      puts " login is unsucessful"
    end

    #expect(response.status).to eq(200)
end
end

Then(/^User gets the bearer token$/) do
  #puts $bearerToken
end

And(/^User makes a GET request for '(.*)'$/) do |api_url|
  GET(api_url)
  puts "response from #{api_url}"
  #puts $lastJsonResponse
end

And(/^User makes a GET request for each site and validate the site info$/) do
  # get the db query response and loop through all urls
  $dboutput.each do |dbRow|
    begin
      # generate the api request url with db url
      api_url = "/Rave/sites?url=" + dbRow['url']
      #api_url = "/Rave/sites?url=" + 'acadia.mdsol.com'
      # ge the API response for the request
      GET(api_url)
      puts "response from #{api_url}"
      #puts $lastJsonResponse
      # get the expecte version number form DB Row
      dbCrawler = dbRow["Crawler"]
      #dbCrawler = '5.6.5.299'

      # validate db crawler url and response url then take the version number ( API responses multiple urls)
      if $lastJsonResponse == '"Message"=>"Site list is empty."' then
        puts "Site list is empty"
      else
        # need to check dbCrawler value
        apiresponseRaveVersion = JsonPath.new("$..[?(@.url==#{dbRow['url']})]").on($lastJsonResponse)[0]['rave_version']

        #assert_equal(dbCrawler, apiresponseRaveVersion)
        if dbCrawler == apiresponseRaveVersion
          puts "Pass - dbCrawler rave version " + dbCrawler + " API response rave version " + apiresponseRaveVersion + " are same"
        else
          puts "Fail - dbCrawler rave version " + dbCrawler + " API response rave verson " + apiresponseRaveVersion + " are not equal"
          $TempVerifyStatus = false
        end
      end
    rescue => e
      puts "*FAILED*." + e.message
      next

    end

  end
  #assert($TempVerifyStatus)
end



And(/^User makes a GET request for Maintenance '(.*)'$/) do |api_url_m|
  GETM(api_url_m)
  puts "response from #{api_url_m}"
  puts $lastJsonResponse
end


When(/^User makes a GET request for Maintenance event schedule  '(.*)'$/) do |api_url_m1|
  POST(api_url_m1)
  puts "response from #{api_url_m1}"
  puts $lastJsonResponse
end


# Code for Maintenance event lookup

def GETM(api_url_m)
  url = URI(ENV['API_URL_M'] + api_url_m)
  # url = URI("https://mnmapi.mdsol.com/falcon/api/v1/rave/sites?return_key=url")
  http = Net::HTTP.new(url.host, url.port)
  http.use_ssl = true
  request = Net::HTTP::Get.new(url)
  request["Content-Type"] = 'application/json'
  request["Authorization"] = $bearerToken
  request["Cache-Control"] = 'no-cache'
  $response = http.request(request)
  #puts $response.code
  $lastJsonResponse = JSON.parse($response.read_body)
end


# Code for Maintenance event lookup

def GET(api_url)
  url = URI(ENV['API_URL'] + api_url)
  # url = URI("https://mnmapi.mdsol.com/falcon/api/v1/rave/sites?return_key=url")
  http = Net::HTTP.new(url.host, url.port)
  http.use_ssl = true
  request = Net::HTTP::Get.new(url)
  request["Content-Type"] = 'application/json'
  request["Authorization"] = $bearerToken
  request["Cache-Control"] = 'no-cache'
  $response = http.request(request)
  #puts $response.code
  $lastJsonResponse = JSON.parse($response.read_body)
  #puts $lastJsonResponse
end

# Code for Maintenance event schedule
#event lookup

def POST(api_url_m1)
  uri = URI(ENV['API_URL_M'] + api_url_m1)
  http = Net::HTTP.new(uri.host, uri.port)
  http.use_ssl = true
  request = Net::HTTP::Post.new(uri)
  request["Content-Type"] = 'application/json'
  request["Authorization"] = $bearerToken
  request["Cache-Control"] = 'no-cache'
  request.body = "{\n  device: 'string',\n  user_name: 'string',\n  team: 'string',\n  work_order: 'string',\n  planned_start_dt: '2018-07-05T20:20:07.819Z',\n  planned_end_dt: '2018-07-05T20:20:07.819Z',\n  time_zone: 'EST',\n  down_time: true,\n  description: 'test55',\n  title: 'test55',\n  cmp_number: 0,\n  url: 'jnj.mdsol.com'\n}"
  response = http.request(request)
  puts response.read_body
  $lastJsonResponse = JSON.parse($response.read_body)
end

# Code for Maintenance update

When(/^User makes a GET request for Maintenance update '(.*)'$/) do |api_url_p1|
  PUT1(api_url_p1)
  puts "response from #{api_url_p1}"
  puts $lastJsonResponse
end

def PUT1(api_url_p1)
  uri = URI(ENV['API_URL_M'] + api_url_p1)
  #URI("https://premnmapi.mdsol.com/Maintenance/api/v1/events/update")
  http = Net::HTTP.new(uri.host, uri.port)
  http.use_ssl = true
  request = Net::HTTP::Put.new(uri)
  request["Content-Type"] = 'application/json'
  request["Authorization"] = $bearerToken
  request["Cache-Control"] = 'no-cache'
  request.body = "{\n  \"maintenance_id\": 15003,\n  \"site_id\": 0,\n  \"cancelled\": false,\n  \"actual_start_dt\":'2018-07-05T20:20:07.819Z' \"\",\n  \"actual_end_dt\": \"\",\n  \"device\": \"string\",\n  \"user_name\": \"string\",\n  \"team\": \"string\",\n  \"work_order\": \"string\",\n  \"planned_start_dt\": \"2018-07-02T15:59:51.340Z\",\n  \"planned_end_dt\": \"2018-07-02T15:59:51.340Z\",\n  \"time_zone\": \"EST\",\n  \"down_time\": true,\n  \"description\": \"string\",\n  \"title\": \"testupdate_NEWTEST1\",\n  \"cmp_number\": 0,\n  \"url\": \"jnj.mdsol.com\"\n}"
  response = http.request(request)
  puts response.read_body
  $lastJsonResponse = JSON.parse($response.read_body)
end

# Code for Maintenance event end start update

When(/^User makes a GET request for Maintenance startdate '(.*)$/) do |api_url_p2|
  PUT2(api_url_p2)
  puts "response from #{api_url_p2}"
  puts $lastJsonResponse
end

def PUT2(api_url_p2)
  uri = URI(ENV['API_URL_M'] + api_url_p2)
  #URI("https://premnmapi.mdsol.com/Maintenance/api/v1/events/update")
  http = Net::HTTP.new(uri.host, uri.port)
  http.use_ssl = true
  request = Net::HTTP::Put.new(uri)
  request["Content-Type"] = 'application/json'
  request["Authorization"] = $bearerToken
  request["Cache-Control"] = 'no-cache'
  request.body = "{\n  \"maintenance_id\": 15003,\n  \"site_id\": 0,\n  \"cancelled\": false,\n  \"actual_start_dt\": '2018-07-05T20:20:07.819Z' \"\",\n  \"actual_end_dt\": \"\",\n  \"device\": \"string\",\n  \"user_name\": \"string\",\n  \"team\": \"string\",\n  \"work_order\": \"string\",\n  \"planned_start_dt\": \"2018-07-02T15:59:51.340Z\",\n  \"planned_end_dt\": \"2018-07-02T15:59:51.340Z\",\n  \"time_zone\": \"EST\",\n  \"down_time\": true,\n  \"description\": \"string\",\n  \"title\": \"testupdate_NEWTEST1\",\n  \"cmp_number\": 0,\n  \"url\": \"jnj.mdsol.com\"\n}"
  response = http.request(request)
  puts response.read_body
  $lastJsonResponse = JSON.parse($response.read_body)
end

# Code for Maintenance event end date update
When(/^User makes a GET request for Maintenance eventend '(.*)$/) do |api_url_p3|
  PUT3(api_url_p3)
  puts "response from #{api_url_p3}"
  puts $lastJsonResponse
end

def PUT3(api_url_p3)
  uri = URI(ENV['API_URL_M'] + api_url_p3)
  #URI("https://premnmapi.mdsol.com/Maintenance/api/v1/events/update")
  http = Net::HTTP.new(uri.host, uri.port)
  http.use_ssl = true
  request = Net::HTTP::Put.new(uri)
  request["Content-Type"] = 'application/json'
  request["Authorization"] = $bearerToken
  request["Cache-Control"] = 'no-cache'
  request.body = "{\n  \"maintenance_id\": 15003,\n  \"site_id\": 0,\n  \"cancelled\": false,\n  \"actual_start_dt\":  \"\",\n  \"actual_end_dt\":\"2018-07-05T20:20:07.819Z\",\n  \"device\": \"string\",\n  \"user_name\": \"string\",\n  \"team\": \"string\",\n  \"work_order\": \"string\",\n  \"planned_start_dt\": \"2018-07-02T15:59:51.340Z\",\n  \"planned_end_dt\": \"2018-07-02T15:59:51.340Z\",\n  \"time_zone\": \"EST\",\n  \"down_time\": true,\n  \"description\": \"string\",\n  \"title\": \"testupdate_NEWTEST1\",\n  \"cmp_number\": 0,\n  \"url\": \"jnj.mdsol.com\"\n}"
  response = http.request(request)
  puts response.read_body
  $lastJsonResponse = JSON.parse($response.read_body)
end


Then(/^User receives '(.*)' response code$/) do |response_code|
  assert_equal(response_code, $response.code)
end


require 'net/http'
require 'uri'
require 'json'
uri = URI.parse("https://premnmapi.mdsol.com/Maintenance/api/v1/events/update")

header = {'Content-Type': 'text/json'}
user = {

    "device": "string",
    "user_name": "string",
    "team": "string",
    "work_order": "string",
    "planned_start_dt": "2018-06-28T20:20:07.819Z",
    "planned_end_dt": "2018-06-28T20:20:07.819Z",
    "time_zone": "string",
    "down_time": true,
    "description": "string",
    "title": "string",
    "cmp_number": 0,
    "url": "string"

}


When(/^User makes a GET request for each site and validate the app servers info1$/) do
  # Temp Store last DB query response ( this will have all URLS, Appserver details)
  urls = $dboutput
  # puts urls
  #Going through each URL and validating the APP server details
  urls.each do |dbRow1|
    begin
      counter = 0
      puts dbRow1
      query = "SELECT distinct[Url],Falcon, Crawler FROM [Falcon].[verify].[SiteVerificationDetail] where url='" + dbRow1['Url'] + "' order by Crawler"
      step '' 'User execute "' '' + query + '' '" query' ''
      serverdata = $dboutput
      # #generate the api request url with db url
      api_url = "/rave/sites/#{dbRow1['url']}/Summary"
      puts api_url
      # #get the API response for the request
      GET(api_url)
      # #puts "response from #{api_url}"
      #puts $lastJsonResponse
      if $lastJsonResponse == '"Message"=>"Site list is empty."' then
        puts "Site list is empty"
      end
      serverdata.each do |url_data|
        puts url_data
        exp_appserver = url_data['Crawler']
        if $lastJsonResponse.to_s.include?(exp_appserver)
          puts "dbCrawler App Server " + exp_appserver + "is displayed in the API response."
        else
          puts "dbCrawler App Server " + exp_appserver + "is not displayed in the API response."
          $TempVerifyStatus = false
        end
        #  act_appserver = $lastJsonResponse[counter]['server_name']
        #   if exp_appserver == act_appserver
        #     puts "dbCrawler App Server " + exp_appserver + " API response App Server " + act_appserver + " are same"
        #   else
        #     puts "dbCrawler APP Server " + exp_appserver + " API response App Server " + act_appserver + " are not equal"
        #   end
        #   assert_equal(exp_version, act_version)
        #  counter = counter + 1
        #puts exp_appserver
        #puts act_appserver
      end

    rescue
      next
    end
  end
  assert($TempVerifyStatus)
end