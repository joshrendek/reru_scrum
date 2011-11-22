Feature: Scrumming it up
  @javascript
  Scenario: Add a story to a project & story type
    Given I am a new, authenticated user
    Given a project exists named "Foobar"
    Given two story types exist
    Given I am working on the project
    Given a story exists named "StoryA"
    Then I should see "Sprint"
    And I should see "New Story"
    When I wait until all Ajax requests are completed
    And I should see "StoryA"
    Then show me the page

