Feature: Asos Shopping

  Scenario Outline:
    Given I access the log in page
    And I enter <email> in the email field
    And I enter <password> in the passwrod field
    And I click sign in
    And I search for a <product>
    And I click on the product with product id <product_id>
    When I add it to my bag
    Then I should an error saying <error>

    Examples:
     | email | password | product | product_id | error |
     | receivertestsparta@gmail.com | Password01! | oversized-t-shirt-with-check-print | 9517815 | Please select from the available colour and size options |
