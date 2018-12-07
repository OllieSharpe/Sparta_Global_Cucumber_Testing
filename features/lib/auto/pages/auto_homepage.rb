require 'Capybara/dsl'

class AutoHomepage
  include Capybara::DSL

  HOMEPAGE_URL = 'http://automationpractice.com/index.php'
    SIGN_IN_CLASS = '.login'

  def current_url
    page.current_url
  end

  def visit_homepage
    visit(HOMEPAGE_URL)
  end

  def click_sign_in
    find(SIGN_IN_CLASS).click
  end

end
