require 'capybara/dsl'

class ASOS_Registration
  include Capybara::DSL

  EMAIL_ERROR_ID = '#Email-error'
  FIRST_NAME_ERROR_ID = '#FirstName-error'
  LAST_NAME_ERROR_ID = '#LastName-error'


  def enter_email(email)
    fill_in('Email', with: email)
    sleep 1
  end

  def enter_first_name(first_name)
    fill_in('FirstName', with: first_name)
    sleep 1
  end

  def enter_last_name(last_name)
    fill_in('LastName', with: last_name)
    sleep 1
  end



  def email_error_message
    find(EMAIL_ERROR_ID).text
  end

  def first_name_error
    find(FIRST_NAME_ERROR_ID).text
  end

  def last_name_error
    find(LAST_NAME_ERROR_ID).text
  end

end
