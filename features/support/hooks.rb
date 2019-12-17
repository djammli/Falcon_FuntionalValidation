Before do |scenario|
  $TempVerifyStatus = true
  $lastJsonResponse = nil
  $bearerToken=nil
end

After do |scenario|
  # get screenshot if the scenario failed
  if scenario.failed?
    embed("data:image/png;base64,#{@browser.driver.screenshot_as(:base64)}", 'image/png', scenario.name + '_' + Time.now.strftime('%Y%m%d%H%M%S%L'))
  end
  # Close the browser
  @browser.quit unless @browser.nil?
end

at_exit do
  # Close the browser if it's not closed at
  time = Time.now.getutc
  ReportBuilder.configure do |config|
    #config.json_path = 'result-$TEST_ENV_NUMBER.json'
    config.json_path = 'results'
    config.report_path = 'results/cucumber_web_report'
    config.report_types = [:html]
    config.report_tabs = %w[Overview Features Scenarios Errors]
    config.report_title = 'Cucumber web automation test results'
    config.compress_images = false
    config.additional_info = { 'Project name' => 'Falcon', 'Platform' => 'Integration', 'Report generated' => time }
  end
  ReportBuilder.build_report
  @browser.quit unless @browser.nil?
end