Feature: Edit courses
  In order to correct some mistakes
  As an admin
  I want to be able to edit existing courses

  Background:
    Given there are the following users:
      | first_name | last_name | email              | password | admin |
      | Admin      | User      | admin@cuberary.com | password | true  |
      | Standard   | User      | user@cuberary.com  | password | false |
    Given there are the following courses:
      | title            | description                    |
      | HTML5 Essentials | Awesome HTML5 essential course |
    Given I am on the homepage

  Scenario: Edit an existing course
    Given I signed in as "admin@cuberary.com"
    And I click the "Courses" link
    And I click the "HTML5 Essentials" link
    And I should see "HTML5 Essentials" within "h2"
    When I click the "Edit Course" link
    And I fill in "Title" with "HTML5 Essential Training"
    And I press "Update Course"
    Then I should see "Course has been updated."
    And I should see "HTML5 Essential Training" within "h2"
    And I should not see "HTML5 Essentials"
    
