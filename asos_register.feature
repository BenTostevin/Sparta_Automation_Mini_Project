Feature: Asos Login

  # Scenario Outline: The email field on the registration page is wrongly entered
  #   Given I access the asos registration page
  #   And I enter in the email registration field <email>
  #   When I enter in the first name registration field <first_name>
  #   Then I receive the following email registration error: <error>
  #
  # Examples:
  #  | email | first_name | error |
  #  |  | Ben | Oops! You need to type your email here |
  #  | adarramey | Ben | Email fail! Please type in your correct email address |
  #  | adar.ramey.gmail@ | Ben | Email fail! Please type in your correct email address |
  #  | adar.ramey@. | Ben | Email fail! Please type in your correct email address |

  Scenario Outline: The first name field is wrongly filled out
    Given I access the asos registration page
    And I enter in the email registration field <email>
    And I enter in the first name registration field <first_name>
    When I enter in the last name registration field <last_name>
    Then I receive the following first name error: <error>

  Examples:
    | email | first_name | last_name | error |
    | adar.ramey@0ioi.net |  | T | We need your first name – it’s nicer that way |
    | adar.ramey@0ioi.net | Ben. | T | First name must not contain <, >, &, " or . |

  
