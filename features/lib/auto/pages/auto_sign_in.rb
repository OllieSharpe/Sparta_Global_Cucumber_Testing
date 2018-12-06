require 'Capybara/dsl'

class AutoSignInPage
  include Capybara::DSL

  SIGN_IN_URL = 'http://automationpractice.com/index.php?controller=authentication&back=my-account'
  EMAIL_ID = '#email'
  PASSWORD_ID = '#passwd'
  SIGN_IN_BUTTON_ID = '#SubmitLogin'

  def current_url
    page.current_url
  end

  def enter_current_email
    find(EMAIL_ID).native.send_keys('same@same.com')
  end

  def enter_current_password
    find(PASSWORD_ID).native.send_keys('Steve_84')
  end

  def click_sign_in
    find(SIGN_IN_BUTTON_ID).click
  end

end
