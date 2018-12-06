require 'Capybara/dsl'

class DressesPage
  include Capybara::DSL

  DRESSES_URL = 'http://automationpractice.com/index.php?id_category=8&controller=category'

  def current_url
    page.current_url
  end

end
