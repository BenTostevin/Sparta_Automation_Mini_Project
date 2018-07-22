require 'capybara/dsl'

class ASOS_Shopping
  include Capybara::DSL

  def click_product(product_id)
    click_link("#product-#{product_id}")
  end

end
