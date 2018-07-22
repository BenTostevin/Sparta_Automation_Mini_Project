Feature: Asos Shopping

  Scenario Outline:
    Given I access the log in page
    And I enter <email> in the email field
    And I enter <password> in the passwrod field
    And I click sign in
    And I go to the <product> page
    When I add a <product> to my bag
    Then I should see a <product> in my bag

    Examples:
     | email | password | product |
     | receivertestsparta@gmail.com | Password01! | design-oversized-t-shirt-with-check-print | 
