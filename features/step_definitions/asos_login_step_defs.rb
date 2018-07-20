Given("I access the asos login page") do
  @asos_site = ASOS_Site.new
  @asos_site.asos_homepage.visit_home_page
  @asos_site.asos_homepage.click_login
end

Given(/^I enter in the email field (.*)$/) do |email|
  @asos_site.asos_login.enter_email(email)
end

When(/^I enter in the password field (.*)$/) do |password|
  @asos_site.asos_login.enter_password(password)
end

Then(/^I receive the following email error: (.*)$/) do |error|
  expect(@asos_site.asos_login.email_error_message).to eq "#{error}"
end

Then(/^I receive the following password error: (.*)$/) do |error|
  expect(@asos_site.asos_login.password_error_message).to eq "#{error}"
end
