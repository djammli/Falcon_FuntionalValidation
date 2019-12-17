
require  'watir'
require 'selenium-webdriver'

chromedriver_path = File.join(File.absolute_path('..', File.dirname(__FILE__)), 'bin/drivers/chrome', 'chromedriver.exe')
Selenium::WebDriver::Chrome.driver_path = chromedriver_path
#browser = Watir::Browser.new :firefox
browser = Watir::Browser.new :chrome
Given(/^Open the web browser$/) do


#browser = Watir::Browser.new :ie

end

When(/^navigate to website$/) do
  # goto url
  browser.goto "https://mnm-prerelease.hdc.mdsol.com/RaveInfo/Account/Login"
end

Then(/^validate the results$/) do
  # refresh
  browser.refresh
  assert_equal('test1', 'test')
# close
  browser.quit
end


