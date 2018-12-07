require 'Capybara/dsl'

class OrderPage
  include Capybara::DSL

  ORDER_URL = 'http://automationpractice.com/index.php?controller=order'

  def current_url
    page.current_url
  end

  def click_proceed_to_checkout
    find('.standard-checkout').click
  end

  def click_proceed_to_checkout_adress
    find('button[name="processAddress"]').click
  end

  def select_terms_of_service
    find('#cgv').click
  end

  def click_proceed_to_checkout_shipping
    find('button[name="processCarrier"]').click
  end

  def click_pay_by_wire
    find('a[title="Pay by bank wire"]').click
  end

  def click_confirm_order
    find('button[class="button btn btn-default button-medium"]').click
  end

  def click_pay_by_cheque
    find('a[title="Pay by check."]').click
  end

  def check_message_from_bank_wire
    find('p[class="cheque-indent"]').text
  end

  def check_message_from_cheque
    find('p[class="alert alert-success"]').text
  end

  def expected_confirmation_message
    'Your order on My Store is complete.'
  end

end
