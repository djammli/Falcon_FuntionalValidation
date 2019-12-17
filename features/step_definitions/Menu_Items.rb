When(/^User click on Menu item & verify breadcrum$/) do |table|
  # table is a table.hashes.keys # => [:menu_item]
  table.hashes.each do |menu|
    menuItem=''
    hp=HOME_PAGE.new(@browser)
    puts menu['menu_item']
    menu['menu_item'].split(">").each do |item|
      menuItem=item.strip
      puts "clicking on "+ menuItem
      hp.clickonMenuItem(menuItem)
    end
    sleep(5)
    hp.verifyBreadcrum(menu['breadcrumb'])
    step("User capture screenshot")
  end
end


And(/^User click on the Operations link\(tab\)$/) do
  hp=HOME_PAGE.new(@browser)
  hp.clickOnLink()
end

When(/^User click on Menu item$/) do
  hp=HOME_PAGE.new(@browser)
  hp.clickonMenuItem("Lookup")
  step("User capture screenshot")

end

And(/^click on the (.*) link on the left navigation$/) do |link_name|
  @browser.span(xpath: "//ul[@class='page-sidebar-menu  page-header-fixed ']//span[.='#{link_name}']").click
  step("User capture screenshot")
end

Then(/^User verifies "([^"]*)" is displayed under "([^"]*)" left navigation$/) do |sub_item, main_item|
  @browser.link(xpath: "//ul[@class='page-sidebar-menu  page-header-fixed ']//span[.='#{main_item}']/ancestor::li[@class='nav-item  open']//a[.='#{sub_item}']").exist?
end

Then(/^User verifies "([^"]*)" is removed under "([^"]*)" left navigation$/) do |sub_item, main_item|
  puts @browser.link(xpath: "//ul[@class='page-sidebar-menu  page-header-fixed ']//span[.='#{main_item}']/ancestor::li[@class='nav-item  open']//a[.='#{sub_item}']").present?
end


Then(/^User deletes "([^"]*)" under "([^"]*)" left navigation$/) do |arg1, arg2|
  @browser.link(xpath: "//ul[@class='page-sidebar-menu  page-header-fixed ']//span[.='#{main_item}']/ancestor::li[@class='nav-item  open']//a[.='#{sub_item}']").click

end