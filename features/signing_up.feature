Feature: Signing up
  In order to track and manage my e learnings
  As a user
  I want to be able to sign up with Cuberary

  Scenario: Sign up
    Given I am on the homepage
    When I click the "Sign up" link
    And I fill in "First Name" with "John"
    And I fill in "Last Name" with "Smith"
    And I fill in "Email" with "user@cuberary.com"
    And I fill in "Password" with "password"
    And I fill in "Password confirmation" with "password"
    And I press "Sign up"
    Then I should see "A message with a confirmation link has been sent to your email address."

