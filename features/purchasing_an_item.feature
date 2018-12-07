Feature: Purchasing from the site

  Scenario: Buying one item from the basket
    Given I have logged in successfully
    When I add an item to the basket
    Then I should see the item has been added to the basket

  Scenario:
    Given I have logged in successfully
    And I have added an item to the basket
    And I have taken the item through to confirmation
    When I choose to pay by wire
    Then I should see confirmation of my wire order

  Scenario:
    Given I have logged in successfully
    And I have added an item to the basket
    And I have taken the item through to confirmation
    When I choose to pay by check
    Then I should see confirmation of my check order
