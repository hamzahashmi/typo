Feature: Merge Articles
  As an administrator
  In order to better organize articles
  I want to be able to merge articles


  Scenario: non-admin cannot merge articles
    Given the blog is setup
    And I am logged into the pub panel
    And I am on the edit page for article 1
    Then I should not see "merge articles"

  Scenario: merge articles should contain content of both articles
    Given I am an admin
    And I am on the edit page for article 4
    And I enter 5 into the "merge_with" field
    Then I should see the content of article 4
    And I should see the content of article 5


  Scenario: merge articles should contain one author
    Given I am an admin
    And I am on the edit page for article 4
    And I enter 5 into the "merge_with" field
    Then the author of article 5 should be "admin"



  Scenario: 
    
	
