Feature: Asos Home

  Scenario: I shouldn't see my name when I'm not logged in
    When I hover over the account dropdown menu
    Then I should not see a sign out option



  Scenario Outline: See name when logged in
    Given I access the log in page
    And I enter <email> in the email field
    And I enter <password> in the passwrod field
    And I click sign in
    When I hover over the account dropdown menu
    Then I should see my name <name> so that I know that I am logged in

    Examples:
     | email | password | name |
     | receivertestsparta@gmail.com | Password01! | Cucumber |
