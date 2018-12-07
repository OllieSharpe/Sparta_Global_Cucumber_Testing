require 'Capybara/dsl'

class WomenPage
  include Capybara::DSL

  WOMEN_URL = 'http://automationpractice.com/index.php?id_category=3&controller=category'

  def current_url
    page.current_url
  end

  def click_printed_dress
    find(:xpath, './/div[@class="button-container"]/a[@data-id-product="4"]').click
  end

  def check_cart_quantity
    find(:xpath, './/a[@title="View my shopping cart"]').text.split(' ')[1]
  end

  def click_continue_shopping
    find(:xpath, './/span[@title="Continue shopping"]').click
  end

  def click_cart
    find(:xpath, './/a[@title="View my shopping cart"]').click
  end

end
