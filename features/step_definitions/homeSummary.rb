#require 'tiny_tds'
require 'rubygems'
require 'selenium-webdriver'
require 'selenium/webdriver/chrome'
require "test/unit/assertions"
include Test::Unit::Assertions

value='"TotalServerCount"=>13940'
value=value.split("=>").last
#puts(value)





Then(/^User should able to validate (.*) info$/) do |rowName|
  db_value='13940'
  #//b[.='Operating Systems']/parent::div/preceding-sibling::div
  web_value = HOME_PAGE.new(@browser).get_rowSummary(rowName)
  assert_equal(db_value,web_value,rowName)
end

Then(/^ser verifies the row summary$/) do |table|


end

Then(/^User verifies the row summary$/) do |table|
  # table is a table.hashes.keys # => [:row_name, :db_value]
  table.hashes.each do |row|
    rowName = row['row_name']

    case rowName
      when 'database servers'
        # table name
        tableName = 'dbservers'
      #db_value =  DataBase.execute('select dbservers from ' + tableName) - if column name is different use this approach
      when 'Servers'
        web_value = HOME_PAGE.new(@browser).get_rowSummary(rowName)
        assert_equal($serverSummary,web_value)
      when 'operating systems'
        #table name
        tableName = 'OS'
      when 'databases'
        #table name
        tableName = 'database'
    end
    #db_value =  DataBase.execute('select * from ' + tableName)  - if column name is same between tables use this approach
    #web_value = HOME_PAGE.new(@browser).get_rowSummary(rowName)
    #assert_equal(db_value,web_value,rowName)
  end

end


And(/^User clicks on "([^"]*)" link on the page$/) do |arg|
  HOME_PAGE.new(@browser).clickOnTotalServers

  #HOME_PAGE.new(@browser).waitForPageLoad
end

And(/^User clicks on the Total Servers link on the page$/) do
  HOME_PAGE.new(@browser).clickOnTotalServers()
  sleep(5)
end

And(/^User clicks on the graph link on the page$/) do
  HOME_PAGE.new(@browser).clickOnGraph()
  sleep(10)
  step("User capture screenshot")
end

Then(/^User should be on the details page$/) do
  HOME_PAGE.new(@browser).verifyDetailspage
  sleep(10)
  step("User capture screenshot")
end