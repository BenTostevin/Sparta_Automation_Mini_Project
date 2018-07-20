require 'capybara/dsl'
require_relative './pages/asos_login.rb'

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

end
