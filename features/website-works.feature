Feature: Website works

  @javascript
  Scenario: Go to Hello World Blogpost
    Given I am on "/"
    Then I follow "Hello world"
    Then I should see "A WordPress Commenter"


  @javascript
  Scenario: Search works
    Given I am on "/"
    Then I fill in "s" with "hello"
    Then I press "Search"
    Then I should see "Search Results for: hello"