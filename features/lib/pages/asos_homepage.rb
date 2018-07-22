require 'capybara/dsl'

class ASOS_Homepage
  include Capybara::DSL

  ASOS_HOMEPAGE = 'http://www.asos.com/'
  ACCOUNT_DOWNDOWN_ID = '#myAccountDropdown'

  def visit_home_page
    visit(ASOS_HOMEPAGE)
    sleep 2
  end

  def account_dropdown_hover
    find(ACCOUNT_DOWNDOWN_ID).hover
    sleep 1
  end

  def click_login
    find(ACCOUNT_DOWNDOWN_ID).hover
    sleep 1
    click_link('Sign In')
    sleep 1
  end

  def click_register
    find(ACCOUNT_DOWNDOWN_ID).hover
    sleep 1
    click_link('Join')
    sleep 1
  end

  def check_signed_in(name)
    find("._2T5vKuV").text.include?(name)
  end

  def check_signed_out
    find("._1k1reGo")[0].text.include?("Sign In")
  end

end
