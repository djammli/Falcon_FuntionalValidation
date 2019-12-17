# Common webmethods
require 'minitest/reporters'
MiniTest::Reporters.use!

module HELPER
  # this is to set value
  # @param [Element] element WebElement to click on
  # @param [String] elementName OPTIONAL -Web Element Name
  def self.enterValue(element,value,elementName='')
    element.wait_until_present(timeout: 30).value=value
    puts('entered '+ value +' in '+ elementName)

  end
  # this is to click on element
  # @param [Element] element WebElement to click on
  # @param [String] elementName OPTIONAL -Web Element Name for reporting purpose
  def self.click(element, elementName='')
    element.wait_until_present(timeout: 30).scroll_into_view
    element.wait_until_present(timeout: 30).fire_event :click
    puts('click on '+ elementName)
  end

  # this is to click on element
  # @param [Element] element WebElement to click on
  # @param [String] elementName OPTIONAL -Web Element Name for reporting purpose
  def self.normalClick(element, elementName='')
    element.wait_until_present(timeout: 30).scroll_into_view
    element.wait_until_present(timeout: 30).click
    puts('click on '+ elementName)
  end

  # this is to set value
  # @param [Element] element WebElement to click on
  # @param [String] elementName OPTIONAL -Web Element Name
  def self.select_value(element,value,elementName='')
    element.wait_until_present(timeout: 30).select_value(value)
    puts('entered '+ value +' in '+ elementName)

  end

end