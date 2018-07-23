Given(/^I search for a (.*)$/) do |product|
  @asos_site.asos_homepage.find_product(product)
end

When(/^I click on the product with product id (.*)$/) do |product_id|
  @asos_site.asos_shopping.click_product(product_id)
end

Given(/^I choose size (.*)$/) do |size|
  @asos_site.asos_shopping.choose_size(size)
end

When(/^I add a (.*) to my bag$/) do |product|

end

Then(/^I should see a (.*) in my bag$/) do |product|

end
