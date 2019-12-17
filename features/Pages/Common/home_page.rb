#require './base_page'
require_relative 'base_page'

class HOME_PAGE < BASE_PAGE
  include Test::Unit::Assertions
  #Page Objects
  span(:menuOverview, :xpath => "(//span[.='Overview'])[1]")
  element(:labelShow, :xpath => "//*[@id='ReportServerList_length']/label")
  element(:acutalshowStatus, :xpath => "//*[@id='maintCalendarTab']")
   element(:success, :xpath => "//*[@id='successPanel']/div[1]/strong")
  button(:totalSevers,xpath: "//div[@class='tab-pane fade active in']//button[contains(.,'Total Servers:')]")
  element(:bar,xpath: "//*[starts-with(@id,'highcharts')]/*[local-name() = 'svg']/*[local-name() = 'g'][5]/*[local-name() = 'g'][1]/*[local-name() = 'rect'][3]")
  #element(:bar,xpath: "//*[starts-with(@id,'highcharts')]/svg/g[5]/g[1]/rect[3]") check this xpath tomorrow in office anna

  #method

  def clickOnTotalServers
    HELPER.click(totalSevers_element)
  end

  def clickOnGraph
    HELPER.normalClick(bar_element)
    sleep(10)
    #step("User capture screenshot")

  end

  def verifyHomepage()
    acutalStatus = menuOverview?
    puts acutalStatus
    assert_equal(true, acutalStatus) #assert_exists(menuOverview)
  end

  def verifyDetailspage()
    acutalStatus1 = labelShow?
    puts acutalStatus1
    sleep(10)
    assert_equal(true, acutalStatus1) #assert_exists(menuOverview)
  end

  def verifySuccesspage()
    acutalStatus1 = success?
    puts acutalStatus1
    assert_equal(true, acutalStatus1) #assert_exists(menuOverview)
  end

  def verifyshowSchedule()
    acutalshowStatus = success?
    puts acutalshowStatus
    assert_equal(true, acutalshowStatus) #assert_exists(menuOverview)
  end

  def clickonMenuItem(menuItem)

    ele = @browser.span(:xpath => " //i[contains(@class,'menu-icon')]/..//span[.='#{menuItem}']")
    arrow_ele = @browser.span(:xpath => "//i[contains(@class,'menu-icon')]/..//span[.='#{menuItem}']/following-sibling::span[@class='arrow open']")
    unless arrow_ele.exists?
      sleep(5)
      HELPER.click(ele, menuItem)
    end

  end


  def verifyBreadcrum(breadCrum)
    actual = @browser.span(:xpath => " (//ul[@class='page-breadcrumb']//li//span[.='#{breadCrum}'])[last()]").wait_until_present(timeout: 30).text
    #puts ele
    assert_equal(breadCrum, actual) #assert_exists(menuOverview)

  end

  def get_rowSummary(rowName)
    @browser.element(:xpath => "//b[.='#{rowName}']/parent::div/preceding-sibling::div").wait_until_present(timeout: 30).text

  end
end
