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

  def add_to_bag
    find('#product-add').click
  end

  def no_size_error(error)
    find('.basic-error-box').text == error
  end
end
