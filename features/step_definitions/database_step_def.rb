When(/^User connect to the Falcon database$/) do
  DATABASE_CONNECT.new().connecTo_DB
end


And(/^User execute "(.*)" query$/) do |query|
  #puts query
  DATABASE_CONNECT.new().executeQuery(query)
  #puts "inside execute query"
  #puts $dboutput
end

When(/^User connect to the Falcon database1$/) do
  DATABASE1.new().connecToDB
end

And(/^User execute "(.*)" query1$/) do |query1|
  DATABASE1.new().executeQuery(query1)
  puts "inside execute query"
  $LAST_DB_QUERY_RESPONSE.each do |row1|
    puts  row1
  end
end

