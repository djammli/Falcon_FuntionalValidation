require 'tiny_tds'

class GenerateFeatures

  def connecTo_DB
    $falconDBConnection = TinyTds::Client.new  host: 'DL7KSMMH2', port: 1433, database: 'Falcon'
    #$falconDBConnection = TinyTds::Client.new  host:'DL7KSMMH2', port:ENV['DBPORT'], database:ENV['DATABASE']
  end

  def execute_query(tableName, columnName = '*')
    $falconDBConnection.execute("SELECT #{columnName} from #{tableName}")
  end

  def executeQuery(query)
    results = $falconDBConnection.execute(query)
    $dboutput = results.collect {|i| i}
    results.do
  end

  def forServers
    connecTo_DB
    #executeQuery("SELECT distinct[Url] FROM verify.SiteVerificationDetail")
    executeQuery("SELECT top 10 [Url] FROM verify.SiteVerificationDetail")
    #executeQuery("SELECT Url FROM verify.SiteVerificationDetail where Url='astellas-test-ravex.mdsol.com'")
    $dboutput.each do |dbRow|
      url = dbRow['Url']
      #out_file = File.new("features/testFolder/" + url.gsub('.','_') + ".feature", "w")
      out_file = File.new("features/testFolder/" + url + ".feature", "w")

      out_file.puts("Feature: " + url + "\n" + "@mytag\n" + "Scenario Outline: Data Verification, " + url + "\n" + "When User post request to API auth as <username> and <password>\n" + "Then User validate the server information for <url> url <Server> server and <Crawler>\n" + "Examples:\n" + "| Server | url | Crawler |\n")
      executeQuery("SELECT falcon, crawler, CONCAT(Resource,RANK () OVER (PARTITION BY resource ORDER BY falcon)) Server FROM verify.SiteVerificationDetail where url ='#{url}'")
            $dboutput.each do |exRow|

             crawler= exRow['crawler']
              if crawler.to_s.empty?
                crawler="blank"
              out_file.puts("|" + exRow['Server'] + "|" + url + "|" + crawler + "|")
              else
                out_file.puts("|" + exRow['Server'] + "|" + url + "|" + crawler + "|")
              end

      end
    end

  end
end

GenerateFeatures.new().forServers