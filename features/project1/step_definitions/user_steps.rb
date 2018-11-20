#Given (/^I launch http:\/\/www\.google\.com$/) do
Given("I launch https:\/\/Google.com") do
  @LoginPage = LoginPage.new(@browser)
  @LoginPage.visit
end


And(/^I enter Amazon in$/) do
  @LoginPage.enterTextG("amazon in")
end

#And(/^I enter password$/) do
# @LoginPage.enterPassword("yyyyyyy")
#end
#When("I click Search button") do
#  @LoginPage.clickSearchButton # Write code here that turns the phrase above into concrete actions
#end
And(/^I click Google Search button$/) do
  @LoginPage.clickSearchButton
end

And(/^I see Home page$/) do
  @LoginPage.verifyHomePageHeader
end

And(/^I click Amazon Web Link$/) do
  @LoginPage.clickonURL
end

And(/^I search IphoneX on Amazon/) do
  @LoginPage.enterTxt("Iphone X")
end

And(/^I click Search$/) do
  @LoginPage.clickSearch
end


When(/^I open first result$/) do
  @LoginPage.openResult
end

Then(/^I Add to cart$/) do
  @LoginPage.addToCart

end
