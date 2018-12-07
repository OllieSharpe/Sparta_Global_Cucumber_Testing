require 'Capybara/dsl'

class AutoAccountPage
  include Capybara::DSL

  ACCOUNT_PAGE_URL = 'http://automationpractice.com/index.php?controller=my-account'

  def current_url
    page.current_url
  end

  def click_women
    find("a[title='Women']").click
  end

  def click_dresses
    find("a[title='Dresses']").click
  end

  def click_tshirts
    find("a[title='T-Shirts']").click
  end

end
