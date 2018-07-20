require 'capybara/dsl'

class ASOS_Login
  include Capybara::DSL

  EMAIL_ERROR_ID = '#EmailAddress-error'
  PASSWORD_ERROR_ID = '#Password-error'


  def enter_email(email)
    fill_in('Username', with: email)
    sleep 1
  end

  def enter_password(password)
    fill_in('Password', with: password)
    sleep 1
  end



  def email_error_message
    find(EMAIL_ERROR_ID).text
  end

  def password_error_message
    find(PASSWORD_ERROR_ID).text
  end

end
