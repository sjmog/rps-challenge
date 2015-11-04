Feature: Play Game
  As a marketeer
  So that I can enjoy myself away from the daily grind
  I would like to be able to play rock/paper/scissors

  Background:
    Given I am on the homepage
    When I fill in "name" with "Sam"
    And I press "submit"

  Scenario: I am presented the choices
    Then I should see a "rock" button
    And I should see a "paper" button
    And I should see a "scissors" button

  Scenario: I can play rock
    When I press "rock"
    Then I should see "You played: rock"

  Scenario: I can play scissors
    When I press "scissors"
    Then I should see "You played: scissors"

  Scenario: I can play paper
    When I press "paper"
    Then I should see "You played: paper"

  Scenario: I can play only one option
    When I press "rock"
    Then I should not see "You played: paper"
    And I should not see "You played: scissors"
    And I should see "You played: rock"

  Scenario: The game can choose a single random option
    Given the game will randomly play "rock"
    When I press "rock"
    Then I should see "The computer played: rock"
    And I should not see "The computer played: paper"
    And I should not see "The computer played: scissors"

  Scenario: The game can choose a different single random option
    Given the game will randomly play "scissors"
    When I press "rock"
    Then I should see "The computer played: scissors"
    And I should not see "The computer played: paper"
    And I should not see "The computer played: rock"

  Scenario: I can win
    Given the game will randomly play "scissors"
    When I press "rock"
    Then I should see "You win!"

  Scenario: The game can win
    Given the game will randomly play "paper"
    When I press "rock"
    Then I should see "Computer wins!"

  Scenario: There can only be one winner :D
    Given the game will randomly play "paper"
    When I press "rock"
    Then I should not see "You win!"
    And I should see "Computer wins!"

  Scenario: A draw can happen
    Given the game will randomly play "paper"
    When I press "paper"
    Then I should not see "You win!"
    And I should not see "Computer wins!"
    And I should see "Draw!"