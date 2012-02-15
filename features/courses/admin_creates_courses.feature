Feature: Admin creates a course
  In order to have a list of courses for users
  As an admin
  I want to create many couses

  Background:
    Given there are the following users:
      | first_name | last_name | email              | password | admin |
      | Admin      | User      | admin@cuberary.com | password | true  |
    Given there are the following companies:
      | name      | url              |
      | Lynda.com | http://lynda.com |
    Given there are the following authors:
      | name       | description   |
      | Joe Marani | A WebDev guru |
    And I signed in as them
    Given I am on the homepage
    And I click the "Courses" link


  Scenario: Creating a course
    When I click the "Add New Course" link
    And I fill in "Title" with "CSS Essentials Training"
    And I fill in "Description" with "This course is super awesome."
    And I fill in "Duration" with "3h 30m"
    And I select "Lynda.com" from "Company"
    And I select "Joe Marani" from "Author"
    And I press "Create Course"
    Then I should see "Course has been created."
    And I should be on the course page for "CSS Essentials Training"
    And I should see "CSS Essentials Training"

