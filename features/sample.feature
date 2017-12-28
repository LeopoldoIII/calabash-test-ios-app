# Tag @eyes tag is used to mark scenarios which are eyes tests
# Along with the @eyes tag next tags might be used:
#  @eyes_app_name "Application Name"
#    sets app_name for eyes. if skipped, the feature name will be used.
#  @eyes_api_key "DUMMY_KEY"
#    The API key is set implicitly from environment variable APPLITOOLS_API_KEY by default. The @eyes_api_key tag will override it.
#
#  @eyes_test_name "a_test_name"
#    Sets the eyes test name for a particular scenario. If skipped, the scenario name will be used.
#
#  Eyes test scenario should contain one or more those steps:
#   I check window
#      If current view contains a scrollable element, it's entire content will be captured
#
#   I check window with description "description"
#      description is passed as a description of a screenshot
#   I check viewport window
#       Captures content of a current view "as is"
#   I check viewport window with description "description"
#   I check element "calabaish.element.selector"
#       Captures content of the element. If the element is scrollable, the entire content will be captured
#   I check element "calabaish.element.selector" with description "description"
#   I check viewport element "calabash.element.selector"
#       Captures the content of the element "as is" the currently visible part will be reported
#   I check viewport element "calabash.element.selector" with description "description"

#   Each scenario might have more than one 'check' steps

#See lib/applitools/calabash/eyes_hooks.rb for details

@eyes
@eyes_app_name "CalabashSDK(iOS)"

Feature: Sample Feature
  Scenario: The first screen
    When I wait
    Then I check window

  Scenario: Continue link
    Then I check element "button marked:'Continue'"

  @eyes_test_name "viewport window"
  Scenario: the second screen
    Given I touch the "Continue" button
    And I wait
    Then I check viewport window

  @eyes_test_name "explicit check of scrollable element"
  Scenario: the table view
    Given I touch the "Continue" button
    And I wait
    Then I check element "UITableView"

  @eyes_test_name "check window with scrollable element"
  Scenario: window (contains scrollable)
    Given I touch the "Continue" button
    And I wait
    Then I check window
