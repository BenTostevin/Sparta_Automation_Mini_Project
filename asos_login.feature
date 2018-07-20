Feature: Asos Login

  Scenario Outline: Leaving email field blank
    Given I access the asos login page
    And I enter in the email field <email>
    When I enter in the password field <password>
    Then I receive the following email error: <error>

  Scenario Outline: Entering an invalid email address in the email field
    Given I access the asos login page
    And I enter in the email field <email>
    When I enter in the password field <password>
    Then I receive the following email error: <error>

  Examples:
   | email | password | error |
   |  | Password01! | Oops! You need to type your email here |
   | BTostevin | Password01! | Email fail! Please type in your correct email address |
