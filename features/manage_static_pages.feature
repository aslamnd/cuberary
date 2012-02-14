Feature: Manage static pages
  In order to publish and serve content to public
  As a admin
  I want to create and manage static page

  Scenario: Homepage
    Given I am on the homepage
    Then I should see "Cuberary" within "h1"
