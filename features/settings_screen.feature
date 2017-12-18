Feature: Settings screen

  Background: Go to settings screen
    Given I am on the settings screen

  Scenario: Change all settings and save
    When I fill out and save custom settings
    Then I should see new settings are saved

  Scenario: Start new game
    And I have created some players
    When I tap New Game
    Then I should be redirected to a clean Home Screen

  Scenario: Cancel settings change
    When I fill out custom settings without saving
    And I tap Cancel
    Then I should see no settings are saved

