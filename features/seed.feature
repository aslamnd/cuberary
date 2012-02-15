Feature: Seed data
  In order to fill the database with basic data
  As the system
  I want to run the seed task

  Background:
    Given I have run the seed task
    Given there are the following users:
      | first_name | last_name | email              | password | admin |
      | Admin      | User      | admin@cuberary.com | password | true  |
    And I signed in as them
    Given I am on the homepage

  Scenario: The course basic data
    When I click the "Course" link
    And I click the "Add New Course" link

    # Company seed data
    Then I should see "Lynda.com" within "#course_company_id"
    Then I should see "Total Training" within "#course_company_id"
    Then I should see "VTC" within "#course_company_id"
    Then I should see "Lullabot" within "#course_company_id"
    Then I should see "TreeHouse (ThinkVitamin)" within "#course_company_id"
    Then I should see "CBT Nuggets" within "#course_company_id"
    Then I should see "Digital Tutors" within "#course_company_id"
    Then I should see "Video 2 Brain" within "#course_company_id"
    Then I should see "Kelby Training" within "#course_company_id"
    Then I should see "Other" within "#course_company_id"


