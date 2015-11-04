Feature: Register Name
  As a marketeer
  So that I can see my name in lights
  I would like to register my name before playing an online game

  Scenario: Has no name to start with
    Given I am on the homepage
    Then I should not see "Hello, Sam!"

  Scenario: Signs up from empty
    Given I am on the homepage
    When I fill in "name" with "Sam"
    And I press "submit"
    Then I should see "Hello, Sam!"

  Scenario: Signs up with blank name
    Given I am on the homepage
    When I press "submit"
    Then I should see "Hello, whoever you are!"
