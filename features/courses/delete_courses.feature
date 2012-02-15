Feature: Delete Courses
  In order to remove false or unwanted courses form Cuberary
  As an Admin
  I want to be able to remove courses

  Background:
    Given there are the following users:
      | first_name | last_name | email              | password | admin |
      | Admin      | User      | admin@cuberary.com | password | true  |
      | Standard   | User      | user@cuberary.com  | password | false |
    Given there are the following courses:
      | title            | description                    |
      | HTML5 Essentials | Awesome HTML5 essential course |
      | CSS3 Essentials  | Awesome CSS3 essential course  |
    Given I am on the homepage

  #@javascript
  Scenario: Delete a course
    Given I signed in as "admin@cuberary.com"
    When I click the "Courses" link
    And I click the "HTML5 Essentials" link
    And I should see "Delete Course"
    And I click the "Delete Course" link
    Then I should not see "HTML5 Essentials"
    And I should see "CSS3 Essentials"


