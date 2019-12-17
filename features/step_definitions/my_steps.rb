When(/^User launch the application$/) do
 #@browser = SeleniumUtil.launchApplication(ENV['URL'], 'firefox')
  @browser = SeleniumUtil.launchApplication(ENV['URL'], 'chrome')
  @browser.window.maximize()
end


Then (/^Page title should be (.*)/) do |title|
  actual = @browser.title
  assert_equal(actual, title)
end

And(/^User closes application$/) do
  @browser.close
end
And(/^User capture screenshot$/) do
  embed("data:image/png;base64,#{@browser.driver.screenshot_as(:base64)}", 'image/png',  Time.now.strftime('%Y%m%d%H%M%S%L'))
end


Then(/^User should be on the '(.*)' page$/) do |title|
  actual = @browser.title
  assert_equal(title,actual)
  step("User capture screenshot")
end

