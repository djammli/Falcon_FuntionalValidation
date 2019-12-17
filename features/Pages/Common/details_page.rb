require_relative 'base_page'

class DETAILS_PAGE < BASE_PAGE
  text_field(:searchbox, xpath: "//input[@type = 'search']")
  div(:totalNumOfRecords, css: ".dataTables_info")
  element(:lastPageNumber, xpath:"(//div[@class='dataTables_paginate paging_simple_numbers']//a)[last()-1]")
  elements(:numberOfRecordsInPage,xpath: "//table[contains(@class,'compact dataTable no-footer')]/tbody/tr")
  def enterSearchTerm(searchTearm)
    HELPER.enterValue(searchbox_element,searchTearm,"Search Box")
  end

  def clickOnPage(page_number)
    case page_number.downcase
      when 'last'
        ele = @browser.link(xpath:"(//div[@class='dataTables_paginate paging_simple_numbers']//a)[last()-1]")
      when 'first'
        ele = @browser.link(xpath:"(//div[@class='dataTables_paginate paging_simple_numbers']//a)[2]")
      when 'next'
        ele = @browser.link(xpath:"(//div[@class='dataTables_paginate paging_simple_numbers']//a)[last()]")
      when 'previous'
        ele = @browser.link(xpath:"(//div[@class='dataTables_paginate paging_simple_numbers']//a)[1]")
      else
        ele = @browser.link(xpath:"(//div[@class='dataTables_paginate paging_simple_numbers']//a)[#{page_number}]")
    end
    HELPER.click(ele)
  end

  def getCurrentPage
    if @browser.link(:class=>"paginate_button previous disabled").present?
      return "first"
    elsif @browser.link(:class=>"paginate_button next disabled").present?
      return "last"
    else
      return @browser.link(:class=>"paginate_button current").text
    end

  end

  def selectSearchResultsCountPerPage(searchResults)
    @browser.element(:xpath=>"//select[@name='ReportServerList_length']/option[.='#{searchResults}']").click
  end

  def selectrunbookSearchResultsCountPerPage(searchResults)
    @browser.element(:xpath=>"//select[@name='RunbookServiceCatalog_length']/option[.='#{searchResults}']").click
  end


  def getTotalNumOfRecords
    totalNumOfRecords
  end

  def getNumOfRecordsInCurrentPage
    numberOfRecordsInPage_elements.count.to_s
  end

  def calculateNumOfPages(numRecords,items_count)
    numRecords.to_f/items_count.to_i
  end

  def getTotalNumOfPages
    lastPageNumber
  end
end
