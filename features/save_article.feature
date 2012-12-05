Feature:

  As a doctor
  So that I can read an article at a later time
  I want to be able to save links to the articles that I liked

Background: existing settings
  Given I am on the home page of "Drufus"
  And I plan to search for headache
  When I follow "Sign in with Google"
  And Google authorizes me
  When I fill in "_search_term" with "headache"
  And I press "Search"

@omniauth_test
Scenario: save an article
  When I follow "Save Article"
  And I follow "Saved Articles"
  Then I should see "Delete Article"

@omniauth_test
Scenario: delete the article I just saved from the saved article page
  When I follow "Save Article"
  And I follow "Saved Articles"
  Then I should see "Delete Article"
  When I follow "Delete Article"
  Then I should not see "Delete Article"

@omniauth_test
Scenario: unsave the article I just saved from the result page
  When I follow "Save Article"
  And I follow "Saved Articles"
  Then I should see "Delete Article"
  When I fill in "_search_term" with "headache"
  And I press "Search"
  Then I should see "Unsave Article"
  When I follow "Unsave Article"
  And I follow "Saved Articles"
  Then I should see "No saved articles"
