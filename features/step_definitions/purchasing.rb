Given("I have taken the item through to confirmation") do
  women_page.click_cart
  order_page.click_proceed_to_checkout
  order_page.click_proceed_to_checkout_adress
  order_page.select_terms_of_service
  order_page.click_proceed_to_checkout_shipping
end

Given("I have added an item to the basket") do
  auto_account_page.click_women
  women_page.click_printed_dress
  women_page.click_continue_shopping
end

Given("I have logged in successfully") do
  auto_homepage.visit_homepage
  auto_homepage.click_sign_in
  auto_sign_in.enter_current_email
  auto_sign_in.enter_current_password
  auto_sign_in.click_sign_in
end

When("I choose to pay by wire") do
  order_page.click_pay_by_wire
  order_page.click_confirm_order
end

When("I choose to pay by check") do
  order_page.click_pay_by_cheque
  order_page.click_confirm_order
end

When("I add an item to the basket") do
  auto_account_page.click_women
  women_page.click_printed_dress
  women_page.click_continue_shopping
end

Then("I should see confirmation of my wire order") do
  expect(order_page.check_message_from_bank_wire).to eq order_page.expected_confirmation_message
end

Then("I should see confirmation of my check order") do
  expect(order_page.check_message_from_cheque).to eq order_page.expected_confirmation_message
end

Then("I should see the item has been added to the basket") do
  expect(women_page.check_cart_quantity).to eq "1"
end
