Feature: Auth testing

  Scenario Outline: Creating a new account
    Given I am not authenticated
    When I go to register # define this path mapping in features/support/paths.rb, usually as '/users/sign_up'
    And I fill in "user_email" with "<email>"
    And I fill in "user_password" with "<password>"
    And I fill in "user_password_confirmation" with "<password>"
    And I press "Sign Up"
    Then I should see "Welcome! You have signed up successfully." 

    Examples:
      | email           | password   |
      | testing@man.net | secretpass |
      | foo@bar.com     | fr33z3     |

