Feature: Players interactions

Background: Always start from home screen
  Given I am on home screen
  And I have created a player

Scenario: Money transfer bank to player
  When I transfer money from bank to player
  Then I should see player balance increase accordingly 
  
Scenario: Money transfer player to bank
  When I transfer money from player to bank
  Then I should see player balance decrease accordingly 

Scenario: Money transfer between players
  And I have created a player
  When I transfer money from player to player
  Then I should see player balance decrease accordingly 
  And I should see player balance increase accordingly 

