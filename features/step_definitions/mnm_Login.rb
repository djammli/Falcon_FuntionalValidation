When("User enter valid user name and password") do
  bp=BASE_PAGE.new(@browser)
  bp.enterUserName(ENV['UID'])
  bp.enterPassword(ENV['PWD'])
end
And("User click on login button") do
  BASE_PAGE.new(@browser).clickOnLogin()
  sleep(5)
end

Then("User should able to see Overview screen") do
sleep(2)
HOME_PAGE.new(@browser).verifyHomepage
  step("User capture screenshot")
  sleep(5)
end
