Feature: Players creation

Background: Always start from home screen
  Given I am on home screen

Scenario: Details of a player
  When I have created a player
  Then I should see this player on home screen

Scenario: Boudary number of players
  Given I have created six players
  Then I should see the Add Player icon is disabled

Scenario: Cancel player create
  Given I am on the Add player screen
  When I tap Cancel
  Then I should be directed back to home screen
  And No new players should have been created



