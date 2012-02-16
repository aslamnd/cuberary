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
      | title            | description                    | released   |
      | CSS3 Essentials  | Awesome CSS3 essential course  | 2010-10-10 |
      | CSS2 Essentials  | CSS2 essential course          | 2009-02-10 |
      | HTML5 Essentials | Awesome HTML5 essential course | Yesterday  |
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

  Scenario: Latest courses should list at the top
    Given I signed in as them
    When I visit courses page
    Then "HTML5 Essentials" should appear before "CSS3 Essentials"
    And "CSS3 Essentials" should appear before "CSS2 Essentials"
    And I should see "New" tag for "HTML5 Essentials" within ".course"
    When I click the "HTML5 Essentials" link
    And I should see "New" tag for "HTML5 Essentials" within "h2"
