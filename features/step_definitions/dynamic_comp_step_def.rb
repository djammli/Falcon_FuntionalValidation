Then(/^User validate the app information for (.*) url and (.*) server$/) do|url, server|
  query = "SELECT * From (SELECT distinct[Url],CONCAT(Resource,RANK () OVER (PARTITION BY resource ORDER BY falcon)) Server,Falcon, Crawler FROM [Falcon].[verify].[SiteVerificationDetail] where Url='#{url}')tempTable WHERE Server='#{server}'"
  step '' 'User execute "' '' + query + '' '" query' ''
  # urlData=[{"Url"=>"abbvie.mdsol.com","Server"=>"AppServer1","Crawler"=>"hdca23prappv001"}]
  # generate the api request url with db url
  api_url = "/rave/sites/#{url}/summary"
  puts api_url
  GET(api_url)
  #sleep(1)
  if $lastJsonResponse == '"Message"=>"Site list is empty."' then
    puts "Site list is empty"
  end
  exp_appserver = $dboutput[0]['Crawler']
  assert($lastJsonResponse.to_s.include?(exp_appserver),"Expected #{exp_appserver}" )
  puts "Expected #{exp_appserver}"
  #sleep(1)
end


Then(/^User validate the app information for (.*) url (.*) server and (.*) crawler $/) do|url, server, crawler|

end


Then(/^User validate the server information for (.*) url (.*) server and (.*)$/) do |url, server, crawler|
  #query = "SELECT * From (SELECT distinct[Url],CONCAT(Resource,RANK () OVER (PARTITION BY resource ORDER BY falcon)) Server,Falcon, Crawler FROM [Falcon].[verify].[SiteVerificationDetail] where Url='#{url}')tempTable WHERE Server='#{server}'"
  #step '' 'User execute "' '' + query + '' '" query' ''
  # urlData=[{"Url"=>"abbvie.mdsol.com","Server"=>"AppServer1","Crawler"=>"hdca23prappv001"}]
  # generate the api request url with db url
  #
  if $lastJsonResponse == nil then
        api_url = "/rave/sites/#{url}/summary"
      GET(api_url)
      if $lastJsonResponse == '"Message"=>"Site list is empty."' then
        puts "Site list is empty"
      end
        exp_serverinfo = crawler
        puts exp_serverinfo
        assert($lastJsonResponse.to_s.include?(exp_serverinfo) )
        puts "Expected #{exp_serverinfo}"
        #sleep(1)
  else
      if $lastJsonResponse == '"Message"=>"Site list is empty."' then
        puts "Site list is empty"
      end
      exp_serverinfo = crawler
      puts exp_serverinfo
      assert($lastJsonResponse.to_s.include?(exp_serverinfo) )
      puts "Expected #{exp_serverinfo}"
          #sleep(1)
  end

end