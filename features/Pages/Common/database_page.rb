#require 'tiny_tds'

class DATABASE_CONNECT

  def connecTo_DB
    $falconDBConnection =TinyTds::Client.new  host:ENV['host'], port: ENV['port'], database:ENV['database']
  end
  def execute_query(tableName,columnName='*')
    $falconDBConnection.execute("SELECT #{columnName} from #{tableName}")
  end
  def executeQuery(query)
    if (!$falconDBConnection)
      connecTo_DB
    end
    results= $falconDBConnection.execute(query)
    $dboutput = results.collect { |i| i}
    results.do
  end
end




