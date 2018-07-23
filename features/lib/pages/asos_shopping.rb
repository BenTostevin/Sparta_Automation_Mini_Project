require 'capybara/dsl'

class ASOS_Shopping
  include Capybara::DSL

  def click_product(product_id)
    find("#product-#{product_id}").click
  end

  def choose_size(size)
    select(size, :from => '.product-size')
    sleep 1
  end


end
