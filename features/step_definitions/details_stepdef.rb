require 'securerandom'

And(/^User search for '(.*)' in the filter$/) do |searchTerm|
    DETAILS_PAGE.new(@browser).enterSearchTerm(searchTerm)
    step("User capture screenshot")
end

When(/^User navigate to the "([^"]*)" page items$/) do |page_number|
    DETAILS_PAGE.new(@browser).clickOnPage(page_number)
end

Then(/^User should be on the "([^"]*)" page$/) do |page_number|
  actual = DETAILS_PAGE.new(@browser).getCurrentPage
  assert_equal(page_number,actual)
end

When(/^User select "([^"]*)" entries to display$/) do |items_count|
  DETAILS_PAGE.new(@browser).selectSearchResultsCountPerPage(items_count)
end

Then(/^User should see the number of pages adjusted to display "([^"]*)" entries per page$/) do |items_count|
  detPage = DETAILS_PAGE.new(@browser)
  #get the total number of records
  toatlRecords = detPage.getTotalNumOfRecords
  totalNumOfRecords =toatlRecords[toatlRecords.index('of ')+3..toatlRecords.index(' entries')-1].gsub(',','')
  # calculate the number of pages to be displayed
  expNumOfPages =detPage.calculateNumOfPages(totalNumOfRecords,items_count).to_s
  # validate the number of pages
  actNumOfPages = detPage.getTotalNumOfPages.to_i
  if expNumOfPages.include? "."
    assert_equal(expNumOfPages.to_i+1,actNumOfPages)
  else
    assert_equal(expNumOfPages.to_i,actNumOfPages)
  end
  # validate the number of records is number of pages >1
  if actNumOfPages.to_i>1
    assert_equal(items_count,detPage.getNumOfRecordsInCurrentPage)
  end

  # validate the reminder number of records in the last page
  detPage.clickOnPage("last")
  reminderRecords = totalNumOfRecords.to_i-expNumOfPages.to_i*items_count.to_i
  assert_equal(reminderRecords,detPage.getNumOfRecordsInCurrentPage.to_i)
  step("User capture screenshot")
end



When(/^User select runnbook "([^"]*)" entries to display$/) do |items_count|
  DETAILS_PAGE.new(@browser).selectrunbookSearchResultsCountPerPage(items_count)
end

And(/^User enter valid data in teh create page$/) do
  bp=BASE_PAGE.new(@browser)
  rnumber=SecureRandom.hex
  bp.enterProdcutName("test111")
  bp.enterServiceName(rnumber)
  bp.enterEnviornmentsName("test111")
  bp.enterprName("test")
  bp.enterscName("test")
  bp.enternoneName("test")
end

And(/^User click on the save button$/) do
  bp=BASE_PAGE.new(@browser)
  bp.clickonSave()
  step("User capture screenshot")
  sleep(20)
end

Then(/^User should see the runbook successfully created$/) do
  HOME_PAGE.new(@browser).verifySuccesspage
  sleep(10)
  step("User capture screenshot")
end

And(/^User click on username link$/) do
  bp=BASE_PAGE.new(@browser)
  bp.clickonuserlink()
  step("User capture screenshot")
  sleep(10)
end

And(/^click on the add page to favorites$/) do
  bp=BASE_PAGE.new(@browser)
  bp.clickonfavsavelink()
  step("User capture screenshot")
  sleep(10)
end

And(/^click on the "(.*)" menu link$/) do |menu_item_name|
  bp=BASE_PAGE.new(@browser)
  bp.clickOnMenuLinkItem(menu_item_name)
  step("User capture screenshot")
  sleep(10)
end


And(/^click on the save button in the favorites$/) do
  bp=BASE_PAGE.new(@browser)
  bp.clickonfavbutton()
  step("User capture screenshot")
  sleep(10)
end

And(/^User enter valid data in the  Schedule New page$/) do
  bp=BASE_PAGE.new(@browser)
  rnumber=SecureRandom.hex
  bp.entersopsmaintschedulenewTitle("test111")
  bp.entersopsmaintschedulenewWO(rnumber)
  bp.entersopsmaintschedulenewURL("868")
  bp.entersopsmaintscheduleneweng("ben.flanaghan")
  bp.entersopsmaintschedulenewdesc("test")
end

And(/^User click on the save button in the schedule New page$/) do
  bp=BASE_PAGE.new(@browser)
  bp.clickschedulenewSave()
  step("User capture screenshot")
  sleep(10)
end

Then(/^User should see the Schedule is created and show page is displayed$/) do
  HOME_PAGE.new(@browser).verifyshowSchedule()
  sleep(10)
  step("User capture screenshot")
end
