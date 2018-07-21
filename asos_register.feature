Feature: Asos Login

  # Scenario Outline: The email field on the registration page is wrongly entered
  #   Given I access the asos registration page
  #   And I enter in the email registration field <email>
  #   When I enter in the first name registration field <first_name>
  #   Then I receive the following email registration error: <error>
  #
  #   Examples:
  #    | email | first_name | error |
  #    |  | Ben | Oops! You need to type your email here |
  #    | adarramey | Ben | Email fail! Please type in your correct email address |
  #    | adar.ramey.gmail@ | Ben | Email fail! Please type in your correct email address |
  #    | adar.ramey@. | Ben | Email fail! Please type in your correct email address |
  # 
  # Scenario Outline: The first name field is wrongly filled out
  #   Given I access the asos registration page
  #   And I enter in the first name registration field <first_name>
  #   When I enter in the email registration field <email>
  #   Then I receive the following first name error: <error>
  #
  #   Examples:
  #    | email | first_name | error |
  #    | adar.ramey@0ioi.net |  | We need your first name – it’s nicer that way |
  #    | adar.ramey@0ioi.net | Ben. | First name must not contain <, >, &, " or . |
  #
  # Scenario Outline: The last name field is wrongly filled out
  #   Given I access the asos registration page
  #   And I enter in the last name registration field <last_name>
  #   When I enter in the email registration field <email>
  #   Then I receive the following last name error: <error>
  #
  #   Examples:
  #    | email | last_name | error |
  #    | adar.ramey@0ioi.net |  | Last name, too, please! |
  #    | adar.ramey@0ioi.net | Tostevin& | Last name must not contain <, >, &, " or . |
  #
  # Scenario Outline: The password field is wrongly filled out
  #   Given I access the asos registration page
  #   And I enter in the password registration field <password>
  #   When I enter in the email registration field <email>
  #   Then I receive the following password registration error: <error>
  #
  #   Examples:
  #    | email | password | error |
  #    | adar.ramey@0ioi.net |  | Hey, we need a password here |
  #    | adar.ramey@0ioi.net | abc1 | At least 6 letters and 1 number, please! |
  #    | adar.ramey@0ioi.net | Abcdefgh! | At least 6 letters and 1 number, please! |

  Scenario Outline: The day in the date field is changed back to DD
    Given I access the asos registration page
    And I enter the day in the date field <valid_day>
    When I enter the day in the date field <invalid_day>
    Then I get the following date error: <error>

    Examples:
     | valid_day | invalid_day | error |
     | 1 | DD | Enter your full date of birth |
