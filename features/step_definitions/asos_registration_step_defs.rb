Given("I access the asos registration page") do
  @asos_site = ASOS_Site.new
  @asos_site.asos_homepage.visit_home_page
  @asos_site.asos_homepage.click_register
end

Given(/^I enter in the email registration field (.*)$/) do |email|
  @asos_site.asos_registration.enter_email(email)
end

When(/^I enter in the first name registration field (.*)$/) do |first_name|
  @asos_site.asos_registration.enter_first_name(first_name)
end

Then(/^I receive the following email registration error: (.*)$/) do |error|
  expect(@asos_site.asos_registration.email_error_message).to eq "#{error}"
end


When(/^I enter in the last name registration field (.*)$/) do |last_name|
  @asos_site.asos_registration.enter_last_name(last_name)
end

Then(/^I receive the following first name error: (.*)$/) do |error|

end
