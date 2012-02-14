Feature: View Courses
  In order to plan my e learnings
  As a user
  I want to see what are the available course

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


  Scenario: Anonymous User visits the courses page
    Given I am not authenticated
    When I visit courses page
    Then I should not see "HTML5 Essentials" 
    Then I should not see "CSS3 Essentials" 

  Scenario: Authenticated User visits the courses page
    Given I signed in as them
    When I visit courses page
    Then I should see "HTML5 Essentials" within "#courses .course"
    And I should see "CSS3 Essentials"
    When I click the "HTML5 Essentials" link
    Then I should see "HTML5 Essentials" within "h2"
