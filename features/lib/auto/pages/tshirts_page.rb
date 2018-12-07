require 'Capybara/dsl'

class TshirtsPage
  include Capybara::DSL

  TSHIRTS_URL = 'http://automationpractice.com/index.php?id_category=5&controller=category'

  def current_url
    page.current_url
  end

end
