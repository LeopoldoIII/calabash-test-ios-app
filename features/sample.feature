@eyes
Feature: Sample Feature

  #Background:
  #  Given eyes application name is "CucumberSDK(iOS)"
  #  Then open eyes

  Scenario: The first screen
    When I wait
    Then the whole screen should match a baseline

  Scenario: Continue link
    Then the element "button marked:'Continue'" should match a baseline

  Scenario: the second screen
    Given I touch the "Continue" button
    And I wait
    Then the whole screen should match a baseline

  @close
  Scenario: the table view
    Given I touch the "Continue" button
    And I wait
    Then the entire element "UITableView" should match a baseline