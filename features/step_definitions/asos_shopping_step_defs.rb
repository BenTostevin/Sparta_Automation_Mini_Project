Given(/^I search for a (.*)$/) do |product|
  @asos_site.asos_homepage.find_product(product)
end

When(/^I click on the product with product id (.*)$/) do |product_id|
  @asos_site.asos_shopping.click_product(product_id)
end

When(/^I add it to my bag$/) do
  @asos_site.asos_shopping.add_to_bag
end

Then(/^I should an error saying (.*)$/) do |error|

end
