Feature: Asos Shopping

  Scenario Outline:
    Given I access the log in page
    And I enter <email> in the email field
    And I enter <password> in the passwrod field
    And I click sign in
    And I search for a <product>
    And I click on the product with product id <product_id>
    And I choose size <size>
    When I add a <product> to my bag
    Then I should see a <product> in my bag

    Examples:
     | email | password | product | product_id | size |
     | receivertestsparta@gmail.com | Password01! | oversized-t-shirt-with-check-print | 9517815 | M | 
