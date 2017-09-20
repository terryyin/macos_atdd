Feature: Users want to use the calculator
  So that they can do some simple calculation.

  Background:
    Given the caculator is started

  Scenario: Addition
    Given I input "36"
    And then "+"
    And then "6"
    When I press "="
    Then I should see "42" as the output
