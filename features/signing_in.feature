Feature: Signing in
  In order to manage my e learnings
  As a user
  I want to be able to sign in to Cuberary

  Scenario: Sign in via confirmation 
    Given there are the following users:
      | first_name | last_name | email             | password | unconfirmed |
      | John       | Smith     | user@cuberary.com | password | true        |
    And "user@cuberary.com" opens the email with subject "Confirmation instructions"
    And they click the first link in the email
    Then I should see "You have signed up successfully."


  Scenario: Sign in via form
    Given there are the following users:
      | first_name | last_name | email             | password |
      | John       | Smith     | user@cuberary.com | password |
    And I am on the homepage
    When I click the "Sign in" link
    And I fill in "Email" with "user@cuberary.com"
    And I fill in "Password" with "password"
    And I press "Sign in"
    Then I should see "Signed in successfully."
    And I should not see "Sign up"
    And I should not see "Sign in"
    And I should see "John Smith"
    And I should see "Sign out"
