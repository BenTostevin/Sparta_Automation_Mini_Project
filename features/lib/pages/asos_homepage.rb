require 'capybara/dsl'

class ASOS_Homepage
  include Capybara::DSL

  ASOS_HOMEPAGE = 'http://www.asos.com/'
  LOGIN_ID = '#myAccountDropdown'

  def visit_home_page
    visit(ASOS_HOMEPAGE)
    sleep 2
  end

  def click_login
    find(LOGIN_ID).hover
    sleep 1
    click_link('Sign In')
    sleep 1
  end

end
