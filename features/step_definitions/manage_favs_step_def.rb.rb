Then(/^User deletes "([^"]*)" from favorites list$/) do |fav_item|
  @browser.link(xpath: "//td[.='#{fav_item}']/parent::tr//a[.='Delete']").click
end

And(/^User click on "([^"]*)" button on the confirmation box$/) do |button|
  @browser.button(xpath: "//div[@class='DTED DTED_Lightbox_Wrapper']//button[.='#{button}']").click
end