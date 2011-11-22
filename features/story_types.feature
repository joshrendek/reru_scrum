Feature: Story Types

  Scenario: Creating a Story Type
    Given I am a new, authenticated user
    When I follow "Story Types"
    And I follow "New Story type"
    And I fill in "story_type_name" with "Sprint"
    And I press "Create Story type"
    Then I should see "Story type was successfully created."
