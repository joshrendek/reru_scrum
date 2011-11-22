Feature: Projects

  Scenario: Creating a project
    Given I am a new, authenticated user
    Given two story types exist
    When I follow "New Project"
    Then I should see "New project"
    Given I fill in "project_name" with "Foobar"
    And I press "Create Project"
    Then I should see "Foobar"
    And I should see "Sprint"
    And I should see "Parking Lot"

