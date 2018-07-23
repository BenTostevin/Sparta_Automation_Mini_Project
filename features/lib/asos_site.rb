require 'capybara/dsl'
require_relative './pages/asos_login.rb'
require_relative './pages/asos_registration.rb'
require_relative './pages/asos_homepage.rb'
require_relative './pages/asos_shopping.rb'

class ASOS_Site

  def asos_homepage
    ASOS_Homepage.new
  end

  def asos_login
    ASOS_Login.new
  end

  def asos_registration
    ASOS_Registration.new
  end

  def asos_shopping
    ASOS_Shopping.new
  end

end
