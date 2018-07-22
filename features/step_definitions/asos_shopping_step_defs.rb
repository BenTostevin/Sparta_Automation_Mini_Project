Given(/^I go to the (.*) page$/) do |product|
  @asos_site.asos_homepage.find_product(product)
end


When(/^I add a (.*) to my bag$/) do |product|

end

Then(/^I should see a (.*) in my bag$/) do |product|

end
