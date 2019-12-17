module SeleniumUtil
  def self.launchApplication(url,browser)
    case browser.downcase
      when 'chrome'
        chromedriver_path = File.join(File.absolute_path('..', File.dirname(__FILE__)), 'bin/drivers/chrome', 'chromedriver.exe')
        Selenium::WebDriver::Chrome.driver_path = chromedriver_path
        Watir::Browser.start url, :chrome
      when 'firefox', 'ff'
        #Watir::Browser.new :firefox
        Watir::Browser.start url, :firefox

    end

  end
end