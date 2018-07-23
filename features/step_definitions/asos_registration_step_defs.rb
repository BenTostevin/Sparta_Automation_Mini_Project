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

When(/^I enter in the last name registration field (.*)$/) do |last_name|
  @asos_site.asos_registration.enter_last_name(last_name)
end

When(/^I enter in the password registration field (.*)$/) do |password|
  @asos_site.asos_registration.enter_password(password)
end

Given(/^I enter the day in the date field (.*)$/) do |day|
  @asos_site.asos_registration.enter_day(day)
end

When(/^I enter the month in the date field (.*)$/) do |month|
  @asos_site.asos_registration.enter_month(month)
end

When(/^I enter the year in the date field (.*)$/) do |year|
  @asos_site.asos_registration.enter_year(year)
end








Then(/^I receive the following email registration error: (.*)$/) do |error|
  expect(@asos_site.asos_registration.email_error_message).to eq "#{error}"
end

Then(/^I receive the following first name error: (.*)$/) do |error|
  expect(@asos_site.asos_registration.first_name_error).to eq "#{error}"
end

Then(/^I receive the following last name error: (.*)$/) do |error|
  expect(@asos_site.asos_registration.last_name_error).to eq "#{error}"
end

Then(/^I receive the following password registration error: (.*)$/) do |error|
  expect(@asos_site.asos_registration.password_error).to eq "#{error}"
end

Then(/^I get the following date error: (.*)$/) do |error|
  expect(@asos_site.asos_registration.date_error).to eq "#{error}"
end
