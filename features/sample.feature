@eyes
@eyes_app_name "CalabashSDK(iOS)"
Feature: Sample Feature
  Scenario: The first screen
    When I wait
    Then I check window

  Scenario: Continue link
    Then I check element "button marked:'Continue'"

  @eyes_tag "viewport window"
  Scenario: the second screen
    Given I touch the "Continue" button
    And I wait
    Then I check viewport window

  @eyes_tag "explicit check of scrollable element"
  Scenario: the table view
    Given I touch the "Continue" button
    And I wait
    Then I check element "UITableView"

  @eyes_tag "check window with scrollable element"
  Scenario: window (contains scrollable)
    Given I touch the "Continue" button
    And I wait
    Then I check window
