Feature: Users want to use the calculator
  So that they can do some simple calculation.

  Background:
    Given the caculator is started

  @with_calculator
  Scenario: Addition
    Given I input "1"
    And then "+"
    And then "2"
    When I press "="
    Then I should see "3" as the output
