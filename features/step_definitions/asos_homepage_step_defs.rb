Given("I access the log in page") do
  @asos_site = ASOS_Site.new
  @asos_site.asos_homepage.visit_home_page
  @asos_site.asos_homepage.click_login
end

Given(/^I enter (.*) in the email field$/) do |email|
  @asos_site.asos_login.enter_email(email)
end

Given(/^I enter (.*) in the passwrod field$/) do |password|
  @asos_site.asos_login.enter_password(password)
end

Given("I click sign in") do
  @asos_site.asos_login.click_sign_in
end




When("I hover over the account dropdown menu") do
  @asos_site = ASOS_Site.new
  @asos_site.asos_homepage.visit_home_page
  @asos_site.asos_homepage.account_dropdown_hover
end

Then(/^I should see my name (.*) so that I know that I am logged in$/) do |name|
  expect(@asos_site.asos_homepage.check_signed_in(name)).to be true
end

Then("I should not see a sign out option") do
  expect(@asos_site.asos_homepage.check_signed_out).to be true
end






Given(/^I log in$/) do
  @user = create(:user, email: 'receivertestsparta@gmail.com', password: 'Password01!')
end
