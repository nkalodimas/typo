Feature: Merge two different Articles
  As a blog administrator
  In order to avoid having different articles with similar content
  I want to be able to merge two articles to one

  Background: articles in database
 
  Given the following articles exist:
  | title        | rating | director     | release_date |
  | Ruby on Rails    | PG     | George Lucas |   1977-05-25 |
  | Introduction to Rails | PG     | Ridley Scott |   1982-06-25 |

  Scenario: Successfully merge articles
    Given I am on the edit page for "Ruby on Rails"
    And I am logged in as an administrator
    When I fill in "merge_with" with "3"
    And I press "Merge"
    Then I should be on the admin panel
    And I should see "Ruby on Rails was successfully merged with Introduction to Rails"
