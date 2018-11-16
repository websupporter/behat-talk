Feature: Posts

  @db
  Scenario: Edit a post
    Given I am logged in as admin
    Given I am on the edit screen for "Hello World!"
    Then I fill in "title" with "Hello Thessaloniki!"
    When I enter the following content into the post content editor:
      """
      What's up? Do you have a great WordCamp?
      """
    When I publish the changes
    Given I am on "?p=1"
    Then I should see "What’s up?"